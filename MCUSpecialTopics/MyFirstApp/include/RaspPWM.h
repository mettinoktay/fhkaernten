#ifndef RASPPWM_H
#define RASPPWM_H


#include "../include/definition.h"

// wxwidgets scope
#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif

// header file for Memory Mapped Files / Memory Management declarations
#include <sys/mman.h>

#define PWM_CTL     0
#define PWM_STA     1
#define PWM_RNG1    4
#define PWM_DAT1    5
#define PWM_RNG2    8
#define PWM_DAT2    9

#define PWMMODE     0
#define SERMODE     1

#define PWMALGORITHM    0
#define MSTRANS         1


class RaspPWM
{
    public:
        RaspPWM();
        virtual ~RaspPWM();

        void *pwm_map;

        // I/O for 64 and 32 bit access
        volatile uint64_t *pwm64;
        volatile uint32_t *pwm32;
        void PWM_SetMode(unsigned int Channel, unsigned int Mode, unsigned int SubMode);
        void PWM_Enable_Channel(unsigned int Channel);
        void PWM_Disable_Channel(unsigned int Channel);
        void PWM_SetRng(unsigned int Channel, unsigned int Range);
        void PWM_SetData(unsigned int Channel, unsigned int Data);

    protected:

    private:
};

#endif // RASPPWM_H
