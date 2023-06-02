#ifndef RASPI2C_H
#define RASPI2C_H

#include "definition.h"

#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif

#include <sys/mman.h>


#define I2C_C       0
#define I2C_S       1
#define I2C_DLEN    2
#define I2C_A       3
#define I2C_FIFO    4
#define I2C_DIV     5
#define I2C_DEL     6
#define I2C_CLKT    7

#define BSC0_C      *(I2Cio32 + I2C_C)
#define BSC0_S      *(I2Cio32 + I2C_S)
#define BSC0_DLEN   *(I2Cio32 + I2C_DLEN)
#define BSC0_A      *(I2Cio32 + I2C_A)

#define BSC_S_DONE          0x2
#define CLEAR_STATUS        0x2
#define BSC_S_CLEAR_STATUS  0x2
#define BSC_C_ST            0x80  // 1000 0000b
#define BSC_C_ST_I2CEN      0x8080  // 1000 0000 1000 0000b
#define BSC_C_ST_READ       0x81

#define I2C_I2CENb  15 // 0x0F

class RaspPiI2C
{
    public:
        RaspPiI2C();
        virtual ~RaspPiI2C();

        void *I2Cio_map;

        // I/O access
        //volatile unsigned int *i2cio;

        //I/O access for 64 bit
        volatile uint64_t *I2Cio64;

        //I/O access for 32 bit
        volatile uint32_t *I2Cio32;

        void I2C_Enable(void);
        void I2C_Disable(void);
        void I2C_Wait_Done(void);
        void I2C_Write(unsigned int device_address, unsigned int value);
        void I2C_Read(unsigned int length);
        void I2C_FIFO_to_Array(unsigned int *array, unsigned int length);
        void I2C_Read_Status(wxString &StatusStrg);
        void I2C_Read_Only(unsigned int device_address, unsigned int length);

    protected:
    private:
};

#endif // RASPPII2C_H
