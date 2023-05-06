#include "RaspCLK.h"

RaspCLK::RaspCLK()
{
    //ctor
    #define CLK_BASE               (PERI_BASE + 0x00101000) /* CLK controller */

    #define PAGE_SIZE (4*1024)
    #define BLOCK_SIZE (4*1024)

    wxString TmpStrg;
    long int mem_fd;

    if ((mem_fd = open("/dev/mem", O_RDWR | O_SYNC) ) < 0){
        //wxMessageBox(wxT("can't open /dev/mem\n"),wxT("ERROR"),  wxICON_EXCLAMATION);
        exit (1);
    }

    /* mmap CLK */
    clk_map = mmap(
        NULL,               // any address in our space will do
        BLOCK_SIZE,         // map length
        PROT_READ|PROT_WRITE,   // Enable reading & writing to mapped memory
        MAP_SHARED,         // shared with other processes
        mem_fd,             // file to map
        CLK_BASE
        );

    close (mem_fd);

    if (clk_map == MAP_FAILED) {
        TmpStrg.Printf(wxT("mmap error %ld\n"),(long int) clk_map);
        //wxMessageBox(wxT("Error"),wxT("Error"),wxICON_EXCLAMATION,this);
        exit(-1);
    }

    //32bit
    clk32 = (volatile unsigned int *) clk_map;
    //64bit
    clk64 = (volatile unsigned long int *) clk_map;
}

RaspCLK::~RaspCLK()
{
    //dtor
    wxString TmpStrg;

    /* munmap CLK */
    if (munmap(clk_map, BLOCK_SIZE) == -1) {
        TmpStrg.Printf(wxT("munmap error %d\n"),(int) -1);
        //wxMessageBox(wxT("Error"),wxT("Error"),wxICON_EXCLAMATION,this);
        exit(-1);
    }
}
