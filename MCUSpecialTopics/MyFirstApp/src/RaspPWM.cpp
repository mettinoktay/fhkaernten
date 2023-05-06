#include "RaspPWM.h"

RaspPWM::RaspPWM()
{
    //ctor
    #define PWM_BASE0               (PERI_BASE + 0x20C000) /* PWM0 controller */

    #define PAGE_SIZE (4*1024)
    #define BLOCK_SIZE (4*1024)

    wxString TmpStrg;
    int   mem_fd;

    if ((mem_fd = open("/dev/mem", O_RDWR | O_SYNC) ) < 0)
        {
        //wxMessageBox(wxT("can't open /dev/mem\n"),wxT("ERROR"),  wxICON_EXCLAMATION);
        exit (1);
        }

    /* mmap PMWIO0 */
    pwm_map = mmap(
        NULL,               // any address in our space will do
        BLOCK_SIZE,         // map length
        PROT_READ|PROT_WRITE,   // Enable reading & writing to mapped memory
        MAP_SHARED,         // shared with other processes
        mem_fd,             // file to map
        PWM_BASE0
        );

    close (mem_fd);

    if (pwm_map == MAP_FAILED) {
        TmpStrg.Printf(wxT("mmap error %d\n"),(long int) pwm_map);
        //wxMessageBox(wxT("Error"),wxT("Error"),wxICON_EXCLAMATION,this);
        exit(-1);
        }

    pwm32 = (volatile uint32_t *)pwm_map;
    pwm64 = (volatile uint64_t *)pwm_map;

}

RaspPWM::~RaspPWM()
{
    //dtor
    wxString TmpStrg;

    /* munmap PWMIO0 */
    if (munmap(pwm_map,         // address in our space will do
        BLOCK_SIZE              // map length
        ) == -1) {
        TmpStrg.Printf(wxT("munmap error %d\n"),(int) -1);
        //wxMessageBox(wxT("Error"),wxT("Error"),wxICON_EXCLAMATION,this);
        exit(-1);
        }
}


void RaspPWM::PWM_SetMode(unsigned int Channel, unsigned int Mode, unsigned int SubMode)
{
    unsigned int TmpInt;

    if (Mode == PWMMODE)
        if (SubMode == PWMALGORITHM)
            TmpInt = 0x00;
        else
            // MSTRANS
            TmpInt = 0x08; // (1 << 2)
    else
        // SERMODE
        TmpInt = 0x02; // (1 << 7)


    if (Channel == 0)
    {
        // Var: Channel 1
        *(pwm32 + PWM_CTL) &= 0xFFFFFF00;
        *(pwm32 + PWM_CTL) |= TmpInt;

    }
    else
    {
        // Var: Channel 2
        *(pwm32 + PWM_CTL) &= 0xFFFF00FF;
        *(pwm32 + PWM_CTL) |= (TmpInt << 8);
    }

}


void RaspPWM::PWM_Enable_Channel(unsigned int Channel)
{
    if (Channel == 0)
    {
        *(pwm32 + PWM_CTL) |= 0x01; // (1 << 0);

    }
    else
    {
        // Var: Channel 2
        *(pwm32 + PWM_CTL) |= 0x100; // (1 << 8);
    }

}


void RaspPWM::PWM_Disable_Channel(unsigned int Channel)
{
    if (Channel == 0)
    {
        *(pwm32 + PWM_CTL) &= ~0x01; // (1 << 0);

    }
    else
    {
        // Var: Channel 2
        *(pwm32 + PWM_CTL) &= ~0x100; // (1 << 8);
    }

}


void RaspPWM::PWM_SetRng(unsigned int Channel, unsigned int Range)
{
    if (Channel == 0)
    {
        // Var: Channel 1
        *(pwm32 + PWM_RNG1) = Range;
    }
    else
    {
        // Var: Channel 2
        *(pwm32 + PWM_RNG2) = Range;
    }
    usleep(10);
}


void RaspPWM::PWM_SetData(unsigned int Channel, unsigned int Data)
{
    if (Channel == 0)
    {
        // Var: Channel 1
        *(pwm32 + PWM_DAT1) = Data;
    }
    else
    {
        // Var: Channel 2
        *(pwm32 + PWM_DAT2) = Data;
    }
    usleep(10);
}
