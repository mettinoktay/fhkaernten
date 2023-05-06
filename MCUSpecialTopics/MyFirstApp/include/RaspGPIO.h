#include "definition.h"

#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif

#include <sys/mman.h>

#ifndef RASPGPIO_H
#define RASPGPIO_H

#define GPFSEL0     0
#define GPFSEL1     1
#define GPFSEL2     2
#define GPFSEL3     3
#define GPFSEL4     4
#define GPFSEL5     5

#define GPSET0      7
#define GPSET1      8

#define GPCLR0     10
#define GPCLR1     11

#define GPLEV0     13
#define GPLEV1     14

#define GPEDS0     16
#define GPEDS1     17

#define GPREN0     19
#define GPREN1     20

#define GPFEN0     22
#define GPFEN1     23

#define GPHEN0     25
#define GPHEN1     26

#define GPLEN0     28
#define GPLEN1     29

#define GPAREN0    31
#define GPAREN1    32

#define GPAFEN0    34
#define GPAFEN1    35

#define GPPUD0     57
#define GPPUD1     58
#define GPPUD2     59
#define GPPUD3     60

#define NORESISTOR      00
#define PUPRESISTOR     01
#define PDNRESISTOR     02

#define Function0  4
#define Function1  5
#define Function2  6
#define Function3  7
#define Function4  3
#define Function5  2

#define ALT0  4
#define ALT1  5
#define ALT2  6
#define ALT3  7
#define ALT4  3
#define ALT5  2

class RaspGPIO
{
    public:
        RaspGPIO();
        virtual ~RaspGPIO();

        void *gpio_map;
        //I/O access for 64 bit
        volatile unsigned long int *gpio;
        //I/O access for 32 bit
        volatile unsigned int *gpio32;
        //volatile: access the variable from the hardware from the moment of access (no optimization by the compiler)

        void GPIO_SetStdInput(unsigned int pin);
        void GPIO_SetStdOutput(unsigned int pin);
        void GPIO_AlternateFunction(unsigned int pin, unsigned int alternateFunction);
        void GPIO_AlternateFunction_Syn(unsigned int pin, unsigned int alternateFunction);
        void GPIO_AltFuncOutput(unsigned int pin, unsigned int alternate);
        void GPIO_Set(unsigned int pin);
        void GPIO_Clr(unsigned int pin);

        unsigned int GPIO_Get(unsigned int pin);



    protected:

    private:

};

#endif // RASPGPIO_H
