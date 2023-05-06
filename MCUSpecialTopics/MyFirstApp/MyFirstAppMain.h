/***************************************************************
 * Name:      MyFirstAppMain.h
 * Purpose:   Defines Application Frame
 * Author:     ()
 * Created:   2022-03-10
 * Copyright:  ()
 * License:
 **************************************************************/

#ifndef MYFIRSTAPPMAIN_H
#define MYFIRSTAPPMAIN_H

#ifndef WX_PRECOMP
    #include <wx/wx.h>
#endif

#include "MyFirstAppApp.h"
#include "definition.h"
#include "RaspPWM.h"
#include "RaspGPIO.h"
#include "RaspCLK.h"

class MyFirstAppFrame: public wxFrame{
    public:
        MyFirstAppFrame(wxFrame *frame, const wxString& title);
        ~MyFirstAppFrame();
    private:
        enum
        {
            idMenuQuit = 1000,
            idMenuAbout,
            idTimer0,
            idButton0,
            idButton1,
            idSlider
        };

        wxTimer *wxMyTimer0;
        wxButton *myButton0, *myButton1;
        wxPanel *myPanel, *myTimerPanel;
        wxSlider *mySlider;

        void OnClose(wxCloseEvent& event);
        void OnQuit(wxCommandEvent& event);
        void OnAbout(wxCommandEvent& event);
        void Timer0(wxTimerEvent& event);
        void Button0(wxCommandEvent& event);
        void Button1(wxCommandEvent& event);
        void Slider0(wxScrollEvent& event);
        DECLARE_EVENT_TABLE()
};


#endif // MYFIRSTAPPMAIN_H
