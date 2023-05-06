#include "RaspGPIO.h"

RaspGPIO::RaspGPIO()
{
    //ctor

    #define GPIO_BASE               (PERI_BASE + 0x200000) /* GPIO controller */

    #define PAGE_SIZE (4*1024)
    #define BLOCK_SIZE (4*1024)

    wxString TmpStrg;
    long int   mem_fd;

    if ((mem_fd = open("/dev/mem", O_RDWR | O_SYNC) ) < 0)
        {
        //wxMessageBox(wxT("can't open /dev/mem\n"),wxT("ERROR"),  wxICON_EXCLAMATION);
        exit (1);
        }

    /* mmap GPIO */
    gpio_map = mmap(
        NULL,               // any address in our space will do
        BLOCK_SIZE,         // map length
        PROT_READ|PROT_WRITE,   // Enable reading & writing to mapped memory
        MAP_SHARED,         // shared with other processes
        mem_fd,             // file to map
        GPIO_BASE
        );

    close (mem_fd);

    if (gpio_map == MAP_FAILED) {
        TmpStrg.Printf(wxT("mmap error %ld\n"),(long int) gpio_map);
        //wxMessageBox(wxT("Error"),wxT("Error"),wxICON_EXCLAMATION,this);
        exit(-1);
        }

    //32bit       32bit int
    gpio32 = (volatile unsigned int *)gpio_map;
    //64bit system long_int      32bit int
    gpio = (volatile unsigned long int *)gpio_map;
}

RaspGPIO::~RaspGPIO()
{
    //dtor
    wxString TmpStrg;

    /* munmap GPIO */
    if (munmap(gpio_map,         // address in our space will do
        BLOCK_SIZE              // map length
        ) == -1) {
        TmpStrg.Printf(wxT("munmap error %d\n"),(int) -1);
        //wxMessageBox(wxT("Error"),wxT("Error"),wxICON_EXCLAMATION,this);
        exit(-1);
        }
}

void RaspGPIO::GPIO_SetStdInput(unsigned int pin)
{
    unsigned int regOffset, shift;

    regOffset = pin / 10;
    shift = (pin % 10) * 3;

    //pointer problem 64bit
    *(gpio32 + GPFSEL0 + regOffset) &= ~(7 << shift);

}

void RaspGPIO::GPIO_SetStdOutput(unsigned int pin)
{
    unsigned int regOffset, shift;

    regOffset = pin / 10;
    shift = (pin % 10) * 3;

    //pointer problem 64bit
    *(gpio32 + GPFSEL0 + regOffset) &= ~(7 << shift);
    *(gpio32 + GPFSEL0 + regOffset) |=  (1 << shift);
    // TWO LINES ARE NOT CRITICAL BECAUSE DIRECTION SHOULD ONLY BE SET
    // DURING INITIALIZATION; INTERRUPTS ARE ENABLED LATER!
}

void RaspGPIO::GPIO_AlternateFunction(unsigned int pin, unsigned int alternateFunction)
{
    unsigned int regOffset, shift, alternate=2;

    regOffset = pin / 10;
    shift = (pin % 10) * 3;

    switch(alternateFunction)
    {
        case 0: alternate = 4;
                break;
        case 1: alternate = 5;
                break;
        case 2: alternate = 6;
                break;
        case 3: alternate = 7;
                break;
        case 4: alternate = 3;
                break;
        case 5: alternate = 2;
                break;
        default: break;
    }

    //pointer problem 64bit
    *(gpio32 + GPFSEL0 + regOffset) &= ~(7 << shift);
    *(gpio32 + GPFSEL0 + regOffset) |=  (alternate << shift);

}

void RaspGPIO::GPIO_AlternateFunction_Syn(unsigned int pin, unsigned int alternateFunction)
{
//RaspGPIO::GPIO_AlternateFunction_Syn(7,Function0)
    unsigned int regOffset, shift;

    regOffset = pin / 10;
    shift = (pin % 10) * 3;

    //pointer problem 64bit
    *(gpio32 + GPFSEL0 + regOffset) &= ~(7 << shift);
    *(gpio32 + GPFSEL0 + regOffset) |=  (alternateFunction << shift);

}

void RaspGPIO::GPIO_Set(unsigned int pin)
{
    //Set to 1
    unsigned int regOffset, shift;

    regOffset = pin / 32;
    shift = pin % 32;

    //pointer problem 64bit
    *(gpio32 + GPSET0 + regOffset) =  (1 << shift); // 1 means ON
}

void RaspGPIO::GPIO_Clr(unsigned int pin)
{
    //Set to 0
    unsigned int regOffset, shift;

    regOffset = pin / 32;
    shift = pin % 32;

    //pointer problem 64bit
    *(gpio32 + GPCLR0 + regOffset) =  (1 << shift); // 1 means OFF
}

unsigned int RaspGPIO::GPIO_Get(unsigned int pin)
{
    //Get pin value (1 or 0)
    unsigned int regOffset, shift;

    regOffset = pin / 32;
    shift = pin % 32;

    //pointer problem 64bit
    return((*(gpio32 + GPLEV0 + regOffset))>> shift) & 0X0001;

}

void RaspGPIO::GPIO_AltFuncOutput(unsigned int pin, unsigned int alternate)
{
    unsigned int regOffset, shift, code;

    regOffset = pin / 10;
    shift = (pin % 10) * 3;

    switch(alternate){
        case 0: code = 4; break;
        case 1: code = 5; break;
        case 2: code = 6; break;
        case 3: code = 7; break;
        case 4: code = 3; break;
        case 5: code = 2; break;
        default:code = 1;
    }

    //pointer problem 64bit
    *(gpio32 + GPFSEL0 + regOffset) &= ~(7 << shift);
    *(gpio32 + GPFSEL0 + regOffset) |=  (1 << shift);
    // TWO LINES ARE NOT CRITICAL BECAUSE DIRECTION SHOULD ONLY BE SET
    // DURING INITIALIZATION; INTERRUPTS ARE ENABLED LATER!
}


//SET:
   //XXXX XXXX XXXX XXXX XXXX XXXX XXXX XXXX
   //OR JUNCTION
   //0000 0000 0010 0000 0000 0000 0000 0000
   //XXXX XXXX XX1X XXXX XXXX XXXX XXXX XXXX

   //0010 1000 1010 1111 0001 0010 1000 1000
   //XX1X X000 1X1X 1111 XXX1 XX1X 1XXX 1XXX

   //  2    8   A    F    1    2    8    8
   // (1<<29)|(1<<27)|(1<< ............

