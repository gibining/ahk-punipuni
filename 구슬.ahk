#noEnv
;#NoTrayIcon
#SingleInstance force
;SetBatchLines, -1
;SetControlDelay, -1
;SetKeyDelay, -1
SetMouseDelay, -1

Gui,+Toolwindow
Gui, -caption +border
OnMessage(0x201, "WM_LBDOWN") 
SetTitleMatchMode,2
DetectHiddenWindows, On
DetectHiddenText, On
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
SetFormat ,float, 0.0


Gui, font, s9 , ¸¼Àº °íµñ

;Gui, color, 0x000000
Gui, Add, Button, x481 y1 w17 h17  , X
Gui, Add, Button, x461 y1 w17 h17  , O
Gui, Add, Button, x70 y9 w20 h20 g14, 14
Gui, Add, Button, x400 y9 w20 h20 g15, 15
Gui, Add, Button, x103 y9 w20 h20 g11, 11
Gui, Add, Button, x233 y9 w20 h20 g0, ¡ã

Gui, Add, Button, x170 y9 w20 h20 g2, 2
Gui, Add, Button, x270 y9 w20 h20 g3, 3
Gui, Add, Button, x305 y9 w20 h20 g4, 4

Gui, Add, Button, x200 y9 w20 h20 g6, 6

Gui, Add, Button, x9 y220 w20 h20 g7, 7
Gui, Add, Button, x9 y260 w20 h20 g16, 16
Gui, Add, Button, x9 y350 w20 h20 g8, 8
Gui, Add, Button, x9 y380 w20 h20 g10, 10

Gui, Add, Button, x469 y220 w20 h20 g12, 12
Gui, Add, Button, x469 y265 w20 h20 g13, 13
Gui, Add, Button, x469 y380 w20 h20 g5, 5
Gui, Add, Button, x469 y438 w20 h20 g9, 9

Gui, Add, Button, x90 y880 w30 h30 gleftmove, ¡ç
Gui, Add, Button, x380 y880 w30 h30 grightmove, ¡æ
;Gui, Color , 0xfafafa
Gui, Show, w500 h910,±¸½½
global title = "BlueStacks"
global CCNN
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
ControlGetFocus, CCNN ,%title%
WinActivate , %title%
ControlGetFocus, CCNN ,%title%
winmove  , ±¸½½, ,200, 0
winmove , %title%,,230, 30, 600,
winmove , %title%,,230, 30, 440, 852
WinSet AlwaysOnTop ,on,%title%
return

F8::
WinSet AlwaysOnTop ,toggle,%title%
return

F5::
reload 
return

0:
pdrag(220,570,220,1200)
return

14:
pdrag(348,570,37,47)
return

15:
pdrag(87,570,440,47)
return

11:
pdrag(87,570,87,1300)
return


2:
pdrag(87,570,5,1300)
return
;

3:
pdrag(87,570,5,825)
return
;


12:
pdrag(87,570,430,230)
return

13:
pdrag(87,570,5,623)
return
;

5:
pdrag(87,570,430,325)
return

9:
pdrag(87,570,430,418)
return




6:
pdrag(348,570,536,1300)
return
;

4:
pdrag(348,570,407,1200)
return
;


7:
pdrag(348,570,815,1046)
return
;

16:
pdrag(348,570,843,988)
return
;

8:
pdrag(348,570,1089,914)
return

10:
pdrag(348,570,7,330)
return


leftmove:
pdrag(219,615,67,615)
pdrag(350,615,67,615)
return

rightmove:
pdrag(219,615,360,615)
pdrag(87,615,360,615)
return


pclick(x,y) {
	 rx:=x-5
	 ry:=y-45
	 mp:= rx|ry <<16
	 PostMessage, 0x200, 0, %mp%,%CCNN%,%title%
	 PostMessage, 0x201, 1, %mp%,%CCNN%,%title%
	 PostMessage, 0x202, 0, %mp%,%CCNN%,%title%
}

pdrag(x1,y1,x2,y2) {
	 rx1:=x1-5
	 ry1:=y1-45
	 rx2:=x2-5
	 ry2:=y2-45
	 mp1:= rx1|ry1<<16
	 mp2:= rx2|ry2 <<16
	 PostMessage, 0x200, 0, %mp1%,%CCNN%,%title%
	 PostMessage, 0x201, 1, %mp1%,%CCNN%,%title%	 
	 sleep 50
	 PostMessage, 0x200, 0, %mp2%,%CCNN%,%title%
 	 PostMessage, 0x202, 0, %mp2%,%CCNN%,%title%

}

WM_LBDOWN() 
{ 
PostMessage, 0xA1, 2,,, A 
}

buttonO:
winmove , %title%,,230, 30, 600,
winmove , %title%,,230, 30, 440, 852
return

buttonX:
WinSet AlwaysOnTop ,off,%title%
ExitApp

