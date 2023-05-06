#include "definition.h"

#ifndef WX_PRECOMP
#include <wx/wx.h>
#endif

#include <sys/mman.h>

#ifndef RASPCLK_H
#define RASPCLK_H

#define PWMCLK_CNTL 40
#define PWMCLK_DIV  41

class RaspCLK
{
    public:
        RaspCLK();
        virtual ~RaspCLK();

        void *clk_map;
        //I/O access for 64 bit
        volatile uint64_t *clk64;
        //I/O access for 32 bit
        volatile uint32_t *clk32;
        //volatile: access the variable from the hardware from the moment of access (no optimization by the compiler)

    protected:

    private:
};

#endif // RASPCLK_H
