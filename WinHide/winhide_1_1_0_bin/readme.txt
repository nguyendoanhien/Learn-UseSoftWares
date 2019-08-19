========================================================================
       WIN32-APPLICATION : winhide
========================================================================

////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  ( )    ( )  ()  ( )   ( )  ( )  ( ) ()  ( )()    ( )( )()
//  ( ) () ( )  ()  ( )() ( )  ( )()( ) ()  ( )  ()  ( )
//   ( )()( )   ()  ( ) ()( )  ( )  ( ) ()  ( )  ()  ( )()
//    ------    --  ---   ---  ---  --- --. ( )()    ( )( )()
////////////////////////////////////////////////////////////////////////////////////////////////////////////
// written by Heiko Baur 2007
// email: heiko@NOSPAMsingle-malt-blues.de or
//        belbardonisakel@NOSPAMt-online.de
// licenced under the lgpl
////////////////////////////////////////////////////////////////////////////////////////////////////////////
// winHide V1.1
// A tool for hiding windows
// activate it by pressing [CTRL]+[ALT]+[SHIFT] - and now you are able to hide a window
// under the mouse cursor
////////////////////////////////////////////////////////////////////////////////////////////////////////////

Comments for Version 1.1:
------------------------------------------------------------------------------------------------------------
* Removed the mechanism for storing the key states in local variables. It was buggy in XP - don't know the 
  reason why. I exchanged it with the ::GetAsyncKeyState function - seems to be more stable.
* Added version in about dialog
* Added a simple command line interface. Add to the name of the program the text in the window you want to
  hide. These windows will be automatically be hidden through the program startup.
* In Version V1.0 it was possible to launch several times the winhide dialog. This i locked.


Comments for Version 1.0:
------------------------------------------------------------------------------------------------------------
TODO: there is still a bug in "SHOW WINDOW"