/***************************************************************
 * Name:      MyFirstAppApp.cpp
 * Purpose:   Code for Application Class
 * Author:     ()
 * Created:   2022-03-10
 * Copyright:  ()
 * License:
 **************************************************************/

#ifdef WX_PRECOMP
#include "wx_pch.h"
#endif

#ifdef __BORLANDC__
#pragma hdrstop
#endif //__BORLANDC__

#include "MyFirstAppApp.h"
#include "MyFirstAppMain.h"

IMPLEMENT_APP(MyFirstAppApp);

bool MyFirstAppApp::OnInit()
{
    MyFirstAppFrame* frame = new MyFirstAppFrame(0L, _("wxWidgets Application Template"));
    
    frame->Show();
    
    return true;
}
