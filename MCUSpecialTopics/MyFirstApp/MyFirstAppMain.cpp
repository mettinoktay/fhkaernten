/***************************************************************
 * Name     : MyFirstAppMain.cpp                               *
 * Purpose  : Code for Application Frame                       *
 * Author   : Metin Oktay Yilmaz                               *
 * Created  : 2023-03-10                                       *
 * Fınalized:                                                  *
 * License  : GNU GPL                                          *
 ***************************************************************/

#define MY_TIMER_INIT 300

#ifdef WX_PRECOMP
#include "wx_pch.h"
#endif

#ifdef __BORLANDC__
#pragma hdrstop
#endif //__BORLANDC__

#include "MyFirstAppMain.h"
#include "include/RaspGPIO.h"
#include "include/RaspCLK.h"
#include "include/RaspPWM.h"

RaspGPIO *myRaspGPIO = new RaspGPIO;
RaspCLK *myRaspCLK = new RaspCLK;
RaspPWM *myRaspPWM = new RaspPWM;
int myTimer_ms;

//helper functions
enum wxbuildinfoformat {
    short_f,
    long_f
};

wxString wxbuildinfo(wxbuildinfoformat format)
{
    wxString wxbuild(wxVERSION_STRING);

    if (format == long_f )
    {
#if defined(__WXMSW__)
        wxbuild << _T("-Windows");
#elif defined(__WXMAC__)
        wxbuild << _T("-Mac");
#elif defined(__UNIX__)
        wxbuild << _T("-Linux");
#endif

#if wxUSE_UNICODE
        wxbuild << _T("-Unicode build");
#else
        wxbuild << _T("-ANSI build");
#endif // wxUSE_UNICODE
    }

    return wxbuild;
}

BEGIN_EVENT_TABLE(MyFirstAppFrame, wxFrame)
    EVT_CLOSE(MyFirstAppFrame::OnClose)
    EVT_MENU(idMenuQuit, MyFirstAppFrame::OnQuit)
    EVT_MENU(idMenuAbout, MyFirstAppFrame::OnAbout)
    EVT_TIMER(idTimer0, MyFirstAppFrame::Timer0)
    EVT_BUTTON(idButton0, MyFirstAppFrame::Button0)
    EVT_BUTTON(idButton1, MyFirstAppFrame::Button1)
    EVT_COMMAND_SCROLL_CHANGED(idSlider, MyFirstAppFrame::Slider0)
END_EVENT_TABLE()

MyFirstAppFrame::MyFirstAppFrame(wxFrame *frame, const wxString& title) : wxFrame(frame, -1, title){

#if wxUSE_MENUS
    // create a menu bar
    wxMenuBar* mbar = new wxMenuBar();
    wxMenu* fileMenu = new wxMenu(_T(""));
    fileMenu->Append(idMenuQuit, _("&Quit\tAlt-F4"), _("Quit the application"));
    mbar->Append(fileMenu, _("&File"));

    wxMenu* helpMenu = new wxMenu(_T(""));
    helpMenu->Append(idMenuAbout, _("&About\tF1"), _("Show info about this application"));
    mbar->Append(helpMenu, _("&Help"));

    SetMenuBar(mbar);
#endif // wxUSE_MENUS

#if wxUSE_STATUSBAR
    // create a status bar with some information about the used wxWidgets version
    CreateStatusBar(2);
    SetStatusText(_("Hello Code::Blocks user!"),0);
    SetStatusText(wxbuildinfo(short_f), 1);
#endif // wxUSE_STATUSBAR

    /* SETUP OF THE APPLICATION */

    myRaspGPIO->GPIO_SetStdOutput(13);
    myRaspGPIO->GPIO_SetStdOutput(3);

    wxMyTimer0 = new wxTimer(this, idTimer0);
    wxMyTimer0->Stop();

    myRaspGPIO->GPIO_Set(13);
    myRaspGPIO->GPIO_Clr(13);

    myPanel = new wxPanel(this, wxID_ANY, wxDefaultPosition, wxSize(500, 500));

    myTimerPanel = new wxPanel(myPanel, wxID_ANY, wxPoint(225, 20), wxSize(100, 20));
    myTimerPanel->SetBackgroundColour(wxColour(255 << 8));

    mySlider = new wxSlider(myPanel, idSlider, MY_TIMER_INIT, 100, 500, wxPoint(50,0), wxSize(150, 50));
    myTimer_ms = mySlider->GetValue();

    /*Variant 1*/
    //myTimer_ms = 300;
    //mySlider = new wxSlider(myPanel, idSlider, myTimer_ms, 100, 500, wxDefaultPosition, wxDefaultSize);

    /*Variant 2*/
    //mySlider = new wxSlider(myPanel, idSlider, MY_TIMER_INIT, 100, 500, wxDefaultPosition, wxDefaultSize);

    myButton0 = new wxButton(myPanel, idButton0, wxString("LED OFF"), wxPoint(75, 50), wxSize(100, 50));
    myButton1 = new wxButton(myPanel, idButton1, wxString("Timer OFF"), wxPoint(225, 50), wxSize(100, 50));
    myButton1->SetBackgroundColour(wxColour(255 << 8));

    /* PWM Configuration */

    /* Enable just Channel 1 */
    //*(myRaspPWM->pwm32+PWM_CTL) = *(myRaspPWM->pwm32+PWM_CTL) & 0xFFFFFF00;

    /* Enable just Channel 2 */
    //*(myRaspPWM->pwm32+PWM_CTL) = *(myRaspPWM->pwm32+PWM_CTL) & 0xFFFF00FF;

    /* Channel both Channels */
    *(myRaspPWM->pwm32+PWM_CTL) = *(myRaspPWM->pwm32+PWM_CTL) & 0xFFFF0000;
    *(myRaspPWM->pwm32+PWM_CTL) &= 0xFFFF0000;

    /* The following register will have this value:
       01010 1010 xxxx xxxx xxxx xxxx xxxx xxxx */
    *(myRaspCLK->clk32+PWMCLK_CNTL) = 0x5A000000 | 0x20; /* binary: 0010 0000 */

    usleep(20);

    /* Explanation of the while condition:
    read-out: xxxx xxxx xxxx xxxx xxxx xxxx xxxx xxxx
           &: 0000 0000 0000 0000 0000 0000 1000 0000 // hex: 0x80
      result: 0000 0000 0000 0000 0000 0000 X000 0000
     */
    while((*(myRaspCLK->clk32+PWMCLK_CNTL)) & 0x00000080) {
       /*Wait while BUSYFlag (Bit 7) is set, then go ahead*/
    }

    // Divisor
    *(myRaspCLK->clk32 + PWMCLK_DIV) = 0x5A000000 | (0x1FF << 12);

    // RNG controls period
    *(myRaspPWM->pwm32+PWM_RNG1) = 50;
    *(myRaspPWM->pwm32+PWM_RNG2) = 50;

    // DAT controls the duty cycle
    *(myRaspPWM->pwm32+PWM_DAT1) = 0xAC800000;
    *(myRaspPWM->pwm32+PWM_DAT2) = 0x7FFF;

    myRaspGPIO->GPIO_AltFuncOutput(12, 0); /*We have to change it to ALT0*/
    myRaspGPIO->GPIO_AltFuncOutput(13, 0); /*We have to change it to ALT0*/

    *(myRaspCLK->clk32 + PWMCLK_CNTL) = 0x5A000000 | 0x11;

    /* Set bit 4 for polarity change of channel 1*/
    // *(myRaspPWM->pwm32 + PWM_CTL) |= 0x10;

    *(myRaspPWM->pwm32 + PWM_CTL) |= 0x2;

    //*(myRaspPWM->pwm32 + PWM_CTL) |= 0x8181;
    *(myRaspPWM->pwm32 + PWM_CTL) |= 0x0101;
}

MyFirstAppFrame::~MyFirstAppFrame(){
    myRaspGPIO->GPIO_Clr(13);
    myRaspPWM->~RaspPWM();
    myRaspCLK->~RaspCLK();
    myRaspGPIO->~RaspGPIO();
    /*6 Mayıs Cumartesi*/
    myRaspPWM->~RaspPWM();
}

void MyFirstAppFrame::OnClose(wxCloseEvent &event) {
    Destroy();
}

void MyFirstAppFrame::OnQuit(wxCommandEvent &event) {
    Destroy();
}

void MyFirstAppFrame::OnAbout(wxCommandEvent &event) {


    wxString msg = wxbuildinfo(long_f);
    static bool toggle = false;

    if (toggle)
        myRaspGPIO->GPIO_Clr(13);
    else
        myRaspGPIO->GPIO_Set(13);

    toggle = !toggle;

    wxMessageBox(msg, _("Welcome to..."));
    myRaspGPIO->GPIO_Clr(13);
}

void MyFirstAppFrame::Timer0(wxTimerEvent& event){
    static bool toggle = false;

    if (toggle) {
        myRaspGPIO->GPIO_Clr(13);
        myTimerPanel->SetBackgroundColour(wxColour(255 << 0));
    }
    else {
        myRaspGPIO->GPIO_Set(13);
        myTimerPanel->SetBackgroundColour(wxColour(255 << 8));
    }

    toggle = !toggle;
}

void MyFirstAppFrame::Button0(wxCommandEvent& event){
    static bool toggle = false;

    if (toggle) myRaspGPIO->GPIO_Clr(3);
    else myRaspGPIO->GPIO_Set(3);

    toggle = !toggle;
}

void MyFirstAppFrame::Button1(wxCommandEvent& event){
    static bool toggle = true;

    if(toggle) {
        wxMyTimer0->Start(myTimer_ms);
        myButton1->SetBackgroundColour(wxColour(255));
        myButton1->SetLabelText(wxString("Jo eh!"));
        myTimerPanel->SetBackgroundColour(wxColour(255));
    }
    else {
        wxMyTimer0->Stop();
        myButton1->SetBackgroundColour(wxColour(255 << 8));
        myButton1->SetLabelText(wxString("Passt scho!"));
        myTimerPanel->SetBackgroundColour(wxColour(255 << 8));
    }

    toggle = !toggle;
}

void MyFirstAppFrame::Slider0(wxScrollEvent& event){
    myTimer_ms = mySlider->GetValue();
    //wxMyTimer0->Start(myTimer_ms);
    *(myRaspPWM->pwm32+PWM_DAT1) = myTimer_ms;
    *(myRaspPWM->pwm32+PWM_DAT2) = myTimer_ms;
}
