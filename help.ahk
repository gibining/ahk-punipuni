#noEnv
#NoTrayIcon
#SingleInstance force
;SetBatchLines, -1
;SetControlDelay, -1
;SetKeyDelay, -1
SetMouseDelay, -1

;Gui,+Toolwindow
Gui, Color , 0x0000ff
Gui, -caption
;Gui, +border
OnMessage(0x201, "WM_LBDOWN") 
SetTitleMatchMode, 3
DetectHiddenWindows, On
DetectHiddenText, On
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
SetFormat ,float, 0.0


global �ʻ�������1x:=74
global �ʻ�������1y:=281
global �ʻ���÷�11=0x2A78CE
global �ʻ���÷�12=0xCE225F

global �ʻ�������2x:=157
global �ʻ�������2y:=257
global �ʻ���÷�21=0x226ECD
global �ʻ���÷�22=0xCE225F

global �ʻ�������3x:=243
global �ʻ�������3y:=246
global �ʻ���÷�31=0x6399DB
global �ʻ���÷�32=0xCE225F

global �ʻ�������4x:=286
global �ʻ�������4y:=254
global �ʻ���÷�41=0x2271CF
global �ʻ���÷�42=0xCE225F

global �ʻ�������5x:=424
global �ʻ�������5y:=280
global �ʻ���÷�51=0x2274CC
global �ʻ���÷�52=0xCE225F


;�ǹ������� 25% 50% 75%
global �ǹ�������1_25x:=156
global �ǹ�������1_25y:=818
global �ǹ�������1_50x:=230
global �ǹ�������1_50y:=827
global �ǹ�������1_75x:=308
global �ǹ�������1_75y:=815


;�ʻ�� ��� ����Ʈ
global �䱫2x:=53
global �䱫2y:=322
global �䱫3x:=136
global �䱫3y:=296
global �䱫4x:=226
global �䱫4y:=290
global �䱫5x:=311
global �䱫5y:=295
global �䱫6x:=404
global �䱫6y:=321


global watchtype:=1
global helper_name
global helperx
global helpery
global title
global repeatcount:=0
global loopcount:=0
global friendcount:=2
global friendcount1:=0
global findnum:=0
global findnum1:=0
global CCNN
global ������
global ��üũ
global ��������:=5

global Win_x
global Win_y
global skill1stats:=0
global skill2stats:=0
global skill3stats:=0
global skill4stats:=0
global skill5stats:=0
global feverstats:=0
global team
global logsum
global recoverytime
global PointX
global PointY

if(fileexist("PUNIPUNI.INI")){
	IniRead , helper_name, PUNIPUNI.INI, �⺻����, helper_name
	IniRead , title, PUNIPUNI.INI, �⺻����, title
	IniRead , helperx, PUNIPUNI.INI, �⺻����, helperx
	IniRead , helpery, PUNIPUNI.INI, �⺻����, helpery
	IniRead , recoverytime, PUNIPUNI.INI, �⺻����, recoverytime
	IniRead , gametime, PUNIPUNI.INI, �⺻����, gametime
	IniRead , �ݺ�x, PUNIPUNI.INI, ����, ��ġx
	IniRead , �ݺ�y, PUNIPUNI.INI, ����, ��ġy
	IniRead , ù��°, PUNIPUNI.INI, ����, ù��°
	IniRead , �ι�°, PUNIPUNI.INI, ����, �ι�°
	IniRead , ����°, PUNIPUNI.INI, ����, ����°
	IniRead , ù���ð�, PUNIPUNI.INI, ����, ù���ð�
	IniRead , �ι��ð�, PUNIPUNI.INI, ����, �ι��ð�
	IniRead , �����ð�, PUNIPUNI.INI, ����, �����ð�
	IniRead , �ǹ�üũ, PUNIPUNI.INI, ����, �ǹ�üũ
	IniRead , ùĳ, PUNIPUNI.INI, ����, ùĳ	
	IniRead , �丮, PUNIPUNI.INI, ����, �丮
	IniRead , ���, PUNIPUNI.INI, ����, ���
	IniRead , ����, PUNIPUNI.INI, ����, ����
	IniRead , �ʸ��, PUNIPUNI.INI, ����, �ʸ��
	IniRead , �ʻ��1, PUNIPUNI.INI, ����, �ʻ��1
	IniRead , �ʻ��2, PUNIPUNI.INI, ����, �ʻ��2
	IniRead , �ʻ��3, PUNIPUNI.INI, ����, �ʻ��3
	IniRead , �ʻ��4, PUNIPUNI.INI, ����, �ʻ��4
	IniRead , �ʻ��5, PUNIPUNI.INI, ����, �ʻ��5
	IniRead , ��üũ, PUNIPUNI.INI, ����, ��üũ
	IniRead , �ݺ����, PUNIPUNI.INI, ����, �ݺ����
	IniRead, ������, PUNIPUNI.INI, ����, ������
	IniRead, ����Ƚ��, PUNIPUNI.INI, ����, ����Ƚ��
	IniRead, ��1, PUNIPUNI.INI, ����, ��1
	IniRead, ��2, PUNIPUNI.INI, ����, ��2
	IniRead, ��3, PUNIPUNI.INI, ����, ��3
	IniRead, ��4, PUNIPUNI.INI, ����, ��4
	IniRead, ��5, PUNIPUNI.INI, ����, ��5
	IniRead, �ʰ���1, PUNIPUNI.INI, ����, �ʰ���1
	IniRead, �ʰ���2, PUNIPUNI.INI, ����, �ʰ���2
	IniRead, �ʰ���3, PUNIPUNI.INI, ����, �ʰ���3
	IniRead, �ʰ���4, PUNIPUNI.INI, ����, �ʰ���4
	IniRead, �ʻ������, PUNIPUNI.INI, ����, �ʻ������
}

Gui, font, s9 , ���� ���
Gui, Color , 0xfafafa
Gui, Add, GroupBox , x8 y13 w224 h234, �ʻ��
Gui, Add, Groupbox, x58 y24 w34 h41
Gui, Add, Groupbox, x91 y24 w34 h41
Gui, Add, Groupbox, x124 y24 w34 h41
Gui, Add, Groupbox, x157 y24 w34 h41
Gui, Add, Groupbox, x190 y24 w34 h41
Gui, Add, Picture, x68 y38 v��ų1, img\skill0.png
Gui, Add, Picture, x101 y38 v��ų2, img\skill0.png
Gui, Add, Picture, x134 y38 v��ų3, img\skill0.png
Gui, Add, Picture, x167 y38 v��ų4, img\skill0.png
Gui, Add, Picture, x199 y38 v��ų5, img\skill0.png
Gui, Add, Text, x11 y65, ������
Gui, Add, Text, x11 y80, �Ϲ��̻�
Gui, Add, Text, x11 y95, G�ʻ��

if(�ʻ��1=1)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x68 y65 group v�ʻ��1 %chk%

if(�ʻ��1=2)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x68 y80 %chk%

if(�ʻ��1=3)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x68 y95 %chk%

if(�ʻ��2=1)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x101 y65 group v�ʻ��2 %chk%

if(�ʻ��2=2)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x101 y80 %chk%

if(�ʻ��2=3)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x101 y95 %chk%

if(�ʻ��3=1)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x134 y65 group v�ʻ��3 %chk%

if(�ʻ��3=2)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x134 y80 %chk%

if(�ʻ��3=3)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x134 y95 %chk%

if(�ʻ��4=1)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x167 y65 group v�ʻ��4 %chk%

if(�ʻ��4=2)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x167 y80 %chk%

if(�ʻ��4=3)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x167 y95 %chk%

if(�ʻ��5=1)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x199 y65 group v�ʻ��5 %chk%

if(�ʻ��5=2)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x199 y80 %chk%

if(�ʻ��5=3)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x199 y95 %chk%
Gui, Add, text, x16 y130 , �ʻ����
Gui, Add, DDL, x15 y145 w60 AltSubmit v�ʸ��, ��Ƽ�|�ٷ�
Gui, Add, DDL, x94 y120 w72 AltSubmit v��1, ������|1���䱫|2���䱫|3���䱫|4���䱫|5���䱫
Gui, Add, DDL, x94 y145 w72 AltSubmit v��2, ������|1���䱫|2���䱫|3���䱫|4���䱫|5���䱫
Gui, Add, DDL, x94 y170 w72 AltSubmit v��3, ������|1���䱫|2���䱫|3���䱫|4���䱫|5���䱫
Gui, Add, DDL, x94 y195 w72 AltSubmit v��4, ������|1���䱫|2���䱫|3���䱫|4���䱫|5���䱫
Gui, Add, DDL, x94 y220 w72 AltSubmit v��5, ������|1���䱫|2���䱫|3���䱫|4���䱫|5���䱫

Gui, Add, edit, x168 y120 w59 h23 v�ʰ���1 center,
Gui, Add, edit, x168 y145 w59 h23 v�ʰ���2 center,
Gui, Add, edit, x168 y170 w59 h23 v�ʰ���3 center,
Gui, Add, edit, x168 y195 w59 h23 v�ʰ���4 center, 
Gui, Add, DDL, x168 y220 w59 AltSubmit v�ʻ������, ����|������

Gui, Add, Groupbox, x8 y251 w224 h44
Gui, Add, Progress, c0X95E520 x22 y270 w196 h15 v�ǹ�������, 0
Gui, Add, checkbox, x22 y249 h20 v�ǹ�üũ,�ǹ�üũ
;Gui, Add, checkbox, x168 y201 h20 v������,������
Gui, Add, checkbox, x189 y301 h20 v����,����


Gui, Add, Tab, x-2 y298 w245 h130 , ����||�ɼ���|����|
Gui, Tab, ����
Gui, Add, Groupbox, x8 y318 w224 h106 
gui,font,cred bold
Gui, Add, Text, x74 y329 , [F7]
gui,font,cdefault norm
Gui, Add, Text, x95 y330 ,�� ��ġ ����

Gui, Add, Text, x32 y351, X :         ,  Y :
Gui, Add, edit, x49 y349 w29 h18 v�ݺ�x center, 
Gui, Add, edit, x110 y349 w29 h18 v�ݺ�y center, 
Gui, Add, Button, x155 y348 w60 h20 , ��������


Gui, Add, Text, x48 y375, �ݺ���� :
Gui, Add, DDL, x108 y371 w76 AltSubmit v�ݺ����, �ӴϹ���|������|����ȸ|��Ż��|����Ʈ|��Ŭ|��Ʋ�ξ�
Gui, Add, checkbox, x25 y399 h20 v��üũ,��üũ

Gui, Add, Text, x104 y401, ���� :
Gui, Add, DDL, x142 y397 w80 AltSubmit v����Ƚ��, ����|20ȸ����|30ȸ����|40ȸ����|50ȸ����|60ȸ����|70ȸ����|80ȸ����|90ȸ����|100ȸ����
;Gui, Add, radio, x33 y287 v�ݺ�����1 checked, ��ǥ����
;Gui, Add, radio, x115 y287 v�ݺ�����2 , ����Ÿ�� ����



;Gui, Tab, ����
;Gui, Add, Groupbox, x8 y225 w224 h199

;Gui, Add, DDL, x87 y237 w50 AltSubmit v����, ����||1��|2��|3��
;Gui, Add, Text, x33 y270 ,����䱫
;Gui, Add, DDL, x87 y267 w100 AltSubmit v����䱫, �ƴ�||������|���Ѹ��Ҹ�|������|��|��Ʊ�|��Ű������ũ

Gui, Tab, �ɼ���
Gui, Add, Groupbox, x8 y318 w224 h106 ,
Gui, Add, Text, x17 y336 , ù��°
Gui, Add, DDL, x57 y332 w50 AltSubmit vù��°, ����|1��|2��|3��
Gui, Add, Text, x125 y336 , �ð�
Gui, Add, DDL, x150 y332 AltSubmit w50 vù���ð�, ����|5��|6��|7��|8��|9��|10��|11��|12��
Gui, Add, Text, x200 y336 , ��

Gui, Add, Text, x17 y367 , �ι�°
Gui, Add, DDL, x57 y363 AltSubmit w50 v�ι�°, ����|1��|2��|3��
Gui, Add, Text, x125 y367 , �ð�
Gui, Add, DDL, x150 y363 AltSubmit w50 v�ι��ð�, ����|5��|6��|7��|8��|9��|10��|11��|12��
Gui, Add, Text, x200 y367 , ��

Gui, Add, Text, x17 y398 , ����°
Gui, Add, DDL, x57 y394 w50 AltSubmit v����°, ����|1��|2��|3��

Gui, Tab, ����
Gui, add, text, x60 y332 ,������ ������ ĳ����
Gui, Add, Groupbox, x8 y318 w224 h106 ,
Gui, Add, radio, x32 y398 vùĳ ,
Gui, Add, radio, x85 y398 v��� ,
Gui, Add, radio, x138 y398 v���� ,
Gui, Add, radio, x191 y398 v�丮 ,
Gui, add, picture, x18 y355 , img\1��.png
Gui, add, picture, x69 y355 , img\ĳ��1-1.png
Gui, add, picture, x123 y355 , img\ĳ��2-1.png
Gui, add, picture, x177 y355 , img\ĳ��3-1.png


Gui, Tab

gui, add, picture, x10 y440  g�ڵ��̱�, img\auto1.png
gui, add, text, x14 y500, �ڵ� �̱�
gui, add, picture, x90 y440  g�ڵ��귿, img\auto2.png
gui, add, text, x94 y500, �ڵ� �귿
gui, add, picture, x170 y440 g�Һ����� , img\auto3.png
gui, add, text, x174 y500, �� ������

gui, add, picture, x10 y520  gâ��ġ����, img\auto4.png
gui, add, text, x8 y580, â ��ġ����
gui, add, picture, x90 y520 g�α� , img\auto5.png
gui, add, text, x95 y580, �α׺���
gui, add, picture, x170 y520 g����� , img\auto0.png
gui, add, text, x169 y580, ���������

gui, add, picture, x10 y600  g�ұ���, img\auto6.png
gui, add, text, x18 y660, �� ����
gui, add, picture, x90 y600  g�Ѵ������, img\auto6.png
gui, add, text, x90 y660, �Ѵ������
gui, add, picture, x170 y600  g�ʻ����, img\auto6.png
gui, add, text, x181 y660, �ʻ��

gui, add, picture, x10 y680 gfrep , img\auto10.png
gui, add, picture, x90 y680 gpuni , img\auto11.png
;gui, add, picture, x170 y680  g������, img\auto0.png
gui, add, picture, x170 y680  g��������Ȯ��, img\auto0.png


gui, add, text, x157 y763, [F8]�� �߻�
Gui, Add, DDL, x30 y760 AltSubmit w59 v����, ����||������|
Gui, Add, DDL, x93 y760 AltSubmit w59 v����, ����||�밢��|1���|2���|3���-1|3���-2|3���-3

;gui, add, picture, x10 y600  , img\auto0.png
;gui, add, text, x16 y662, 
;gui, add, picture, x90 y600  , img\auto0.png
;gui, add, text, x96 y662, 
;gui, add, picture, x170 y600  , img\auto0.png
;gui, add, text, x176 y662, 

;gui, add, picture, x10 y680  , img\auto0.png
;gui, add, text, x16 y742, 
;gui, add, picture, x90 y680  , img\auto0.png
;gui, add, text, x96 y742, 
;gui, add, picture, x170 y680  , img\auto0.png
;gui, add, text, x176 y742, 

Gui, Add, Groupbox, c000000 x-1 y782 w243 h50
gui, font, c8e8e8e
Gui, Add, Text, x10 y795 w150 vwim , ����
Gui, Add, Text, x12 y811 w80 vcoun , 0/0

Gui, Add, Text, x132 y795 w100 vstats  right, �ݺ�Ƚ��(0)
gui, font, cdefault

Gui, Add, Button, x20 y845 w90 h30 , ����(F6)
Gui, Add, Button, x129 y845 w90 h30 , ����(F5)
Gui, Add, Button, x222 y1 w17 h17  , X

gui, 2:add,listbox, x-1 y-1 w352 r19 vLogtext

;Gui, Add, GroupBox , x0 y-7 w241 h896 

Gui, Show, w240 h886,%helper_name%



if(fileexist("PUNIPUNI.INI")){
	guicontrol,Choose,ù��°,%ù��°%
	guicontrol,Choose,�ι�°,%�ι�°%
	guicontrol,Choose,����°,%����°%
	guicontrol,Choose,ù���ð�,%ù���ð�%
	guicontrol,Choose,�ι��ð�,%�ι��ð�%
	guicontrol,Choose,�����ð�,%�����ð�%
	guicontrol,Choose,�ʸ��,%�ʸ��%
	guicontrol,,�ݺ�x,%�ݺ�x%
	guicontrol,,�ݺ�y,%�ݺ�y%
	guicontrol,,�ǹ�üũ,%�ǹ�üũ%
	guicontrol,,������,%������%
	guicontrol,,ùĳ,%ùĳ%
	guicontrol,,�丮,%�丮%
	guicontrol,,���,%���%
	guicontrol,,����,%����%
	guicontrol,Choose,�ݺ����,%�ݺ����%
	guicontrol,,��üũ,%��üũ%
	guicontrol,Choose,����Ƚ��,%����Ƚ��%
	guicontrol,Choose,��1,%��1%
	guicontrol,Choose,��2,%��2%
	guicontrol,Choose,��3,%��3%
	guicontrol,Choose,��4,%��4%
	guicontrol,Choose,��5,%��5%
	guicontrol,,�ʰ���1,%�ʰ���1%
	guicontrol,,�ʰ���2,%�ʰ���2%
	guicontrol,,�ʰ���3,%�ʰ���3%
	guicontrol,,�ʰ���4,%�ʰ���4%
	guicontrol,Choose,�ʻ������,%�ʻ������%	
}



;WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
;ControlGetFocus, CCNN ,%title%

windowsetting(������)
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
x:=Win_X+Win_W
winmove  , %helper_name%, , x, Win_Y

WinActivate , %title%
ControlGetFocus, CCNN ,%title%
return

�����:
F10::
puni_recovery()
return

F9::

return

�ұ���:
pclick(132,81)
sleep 700
loop, 20
{
	pclick(270,490)
	sleep 350
	pclick(270,490)
	sleep 680
}
pclick(230,780)
return

F8::
Gui, Submit, Nohide
MouseGetPos, Point_X, Point_Y,,CCNN, 1
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
;����
if(����=1)
{
	�߻簢:=0
}
;�밢��
if(����=2)
{
	�߻簢:=40
}
;1���
if(����=3)
{
	�߻簢:=125
}
;2���
if(����=4)
{
	�߻簢:=340
}
;3���-1
if(����=5)
{
	�߻簢:=500
}
;3���-2
if(����=6)
{
	�߻簢:=590
}
;3���-3
if(����=7)
{
	�߻簢:=625
}
if(����=2)
{
	�߻簢:=�߻簢*-1
}
rx1:=Point_X-7-Win_X,
ry1:=Point_Y-47-Win_Y
rx2:=Point_X-7-�߻簢-Win_X,
ry2:=Point_Y-47-400-Win_Y
mp1:= rx1|ry1<<16
mp2:= rx2|ry2<<16
PostMessage, 0x200, 0, %mp1%,%CCNN%,%title%
PostMessage, 0x201, 1, %mp1%,%CCNN%,%title%	 
sleep 50
PostMessage, 0x200, 0, %mp2%,%CCNN%,%title%
PostMessage, 0x202, 0, %mp2%,%CCNN%,%title%
return

111:
settimer,��Ŭ,0
return

222:
settimer,��Ŭ,off
return

frep:
run , lnk\frep.lnk
return

puni:
run , lnk\puni.lnk
return

; ���ھ�� �䱫 

;ȫ�Ź� 					0x6B7286
;����					0xFBFE66
;�ɰ�						0x0A8A79


;���� �䱫

;������					0xD7F4FF
;��Ÿ 						0x725147
;���׼���					0xFE001E
;���						0x49B67F
;������극��ũ		0x40D5AB
;�õ�						0xD5E1E6
;��Ƽ						0x2766DC
;����2��					0xFBA7B2

;����

;�������� 				0xE77DA0
;�˸��ٹ�					0xFFE355
;����Ű��					0x3D88FE
;�߸���ī��				0x9EFE86




������:
loop
{
	PixelSearch dx, dy, 12, 370, 447,805, 0x40D5AB, 0, Fast RGB 
	if errorlevel=0
	{
		pclick(dx,dy)
	}
	PixelSearch dx, dy, 12, 370, 447,805, 0xFBFE66, 0, Fast RGB
	if errorlevel=0
	{
		pclick(dx,dy)
	}
	PixelSearch dx, dy, 12, 370, 447,805, 0xD5E1E6, 0, Fast RGB
	if errorlevel=0
	{
		pclick(dx,dy)
	}
	PixelSearch dx, dy, 12, 370, 447,805, 0xFE001E, 0, Fast RGB
	if errorlevel=0
	{
		pclick(dx,dy)
	}	
}
return


; 0xFD5257  - ���Ȼ�


���Ȼ�:
F3::
Loop
{
	pclick(310,295)
	PixelSearch dx, dy, 12, 540, 447,805, 0xFD5257, 0, Fast RGB ;���Ȼ�
	if errorlevel=0Fast RGB
	{
		pclick(dx,dy)
	}
/*	
	PixelSearch dx, dy, 12, 540, 447,805, 0x273567, 2, Fast RGB ;���ʽ�����
	if errorlevel=0
	{
		pclick(dx,dy)
	}
*/	
}
return


; 0x5E6AC4 - 8��� ������
; 0xACDD34- �帶 ����
���ϵ�:
F4::
Loop
{
	pclick(404,327)
	PixelSearch dx, dy, 12, 540, 447,805, 0xACDD34, 0, Fast RGB ;������
	if errorlevel=0
	{
		pclick(dx,dy)
	}
/*	
	PixelSearch dx, dy, 12, 540, 447,805, 0x273567, 2, Fast RGB ;���ʽ�����
	if errorlevel=0
	{
		pclick(dx,dy)
	}
*/	
}
return

����:
return

�ڵ��̱�:
	imagesearch , Fx, Fy,  145+Win_X, 510+Win_Y, 242+Win_X, 630+Win_Y, *80 img\�̱��ư2.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		sleep 700
		pclick(330,519)
		sleep 2000
		goto ��������
	}
	imagesearch , Fx, Fy,  145+Win_X, 510+Win_Y, 242+Win_X, 630+Win_Y, *80 img\�̱��ư.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		sleep 700
		pclick(330,519)		
		sleep 2000
		goto ��������
	}
	else
	{
		goto �̱�Ȯ��
	}
return	

��������:
	imagesearch , Fx, Fy,  178+Win_X, 723+Win_Y, 208+Win_X, 755+Win_Y, *130 img\������.png
	if errorlevel=0
	{
		goto ������
	}
	else
	{
		goto �ڵ��̱�
	}
return	

������:
pdrag(100,510,440,100)

�̱�Ȯ��:
	imagesearch , Fx, Fy,  198+Win_X, 630+Win_Y, 260+Win_X, 714+Win_Y, *110 img\�̱�Ȯ��.png
	if errorlevel=0
	{
		pclick(Fx+5,Fy+15)
		sleep 30
		pclick(Fx+15,Fy+15)
		sleep 30
		pclick(Fx+25,Fy+15)
		sleep 30
		pclick(Fx+35,Fy+15)
		sleep 30
		pclick(Fx+45,Fy+15)
		sleep 30
		pclick(Fx+55,Fy+15)
		sleep 1000
		goto �ڵ��̱�
	}
	else
	{
		sleep 50
		goto ������
	}
goto �ڵ��̱�
return

�Һ�����:
cnt:=0

�Ҵٽ�:
if(cnt>7)
{
	return
}
imagesearch , Fx, Fy,  326+Win_X, 200+Win_Y, 391+Win_X, 660+Win_Y, *150 img\�������.png
if errorlevel=0
{
	pclick(Fx+22,Fy+22)
	sleep 500	
}
else
{
	pdrag(215,639,215,602)
	sleep 1600
	cnt++
	goto �Ҵٽ�
}


��Ȯ��:
imagesearch , Fx, Fy,  198+Win_X, 497+Win_Y, 256+Win_X, 529+Win_Y, *30 img\��Ȯ��.png
if errorlevel=0
{
	pclick(Fx+10,Fy+10)
	sleep 1000
	goto �Ҵٽ�
}
goto ��Ȯ��

return

�ڵ��귿:
settimer, �귿Ȯ�δ��, 500

�귿�ݺ�:

	imagesearch , Fx, Fy,  145+Win_X, 520+Win_Y, 242+Win_X, 630+Win_Y, *80 img\�̱��ư.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		sleep 2000
	}
	else
	{
		pclick(20,700)
		sleep 200
	}
goto �귿�ݺ�
return	


�귿Ȯ�δ��:

	imagesearch , Fx, Fy,  150+Win_X, 400+Win_Y, 302+Win_X, 744+Win_Y, *110 img\�귿Ȯ��.png
	if errorlevel=0
	{
		pclick(Fx+5,Fy+15)
		sleep 30
		pclick(Fx+15,Fy+15)
		sleep 30
		pclick(Fx+25,Fy+15)
		sleep 30
		pclick(Fx+35,Fy+15)
		sleep 30
		pclick(Fx+45,Fy+15)
		sleep 30
		pclick(Fx+55,Fy+15)
	}
return

#include CaptureScreen.ahk






â��ġ����:
windowsetting(������)
return

�α�:
FileRead,logsum,log\punipuni%A_MM%%A_DD%.log
GuiControl ,2:,Logtext, %logsum%
Gui, 2:Show, w350 h230, �α�
return


��ġ����:
F7::
Gui, Submit, Nohide
MouseGetPos, Point_X, Point_Y,,CCNN, 1
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
sxpos:=Point_X-Win_X
sypos:=Point_Y-Win_Y
GuiControl,, �ݺ�x, %sxpos%
GuiControl,, �ݺ�y, %sypos%
return



9���̵�:
imagesearch , Fx, Fy,  330+Win_X, 473+Win_Y, 347+Win_X, 490+Win_Y, *50 img\9��Ȯ��.png
if errorlevel=0
{
	pclick(334,558)
	sleep 1000
	return
}
else
{
	pclick(24,378)
	sleep 800
	goto 9���̵�
}
return

10���̵�:
imagesearch , Fx, Fy,  362+Win_X, 473+Win_Y, 381+Win_X, 490+Win_Y, *50 img\10��Ȯ��.png
if errorlevel=0
{
	pclick(334,558)
	sleep 1000
	team:=10
	return
}
else
{
	pclick(430,378)
	sleep 800
	goto 10���̵�
}
return


������:
imagesearch , Fx, Fy, 24+Win_X, 456+Win_Y, 114+Win_X, 481+Win_Y,*50 img\��������.png
if (errorlevel=0 and team=9)
{
	pclick(194,630)
	sleep 1000
	gosub 10���̵�
	return
}
else if (errorlevel=0 and team=10)
{
	return
}
else if (team=9)
{
	return
}	
else
{
	pclick(194,630)
	sleep 1000		
	gosub 9���̵�
	return
}
return

Button����(F5):
F5::
;windowsetting(������)
FileAppend, [%A_MM%��%A_DD%�� %A_Hour%:%A_Min%:%A_Sec%] - [ ����  �ݺ�(%repeatcount%) / ģ��(%friendcount1%) ]||`n, log\punipuni%A_MM%%A_DD%.log
Reload
return



Button����(F6):
F6::
windowsetting(������)
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
x:=Win_X+Win_W
if(������=1)
{
	winmove  , %helper_name%, , 0, 0

}
else
{
	winmove  , %helper_name%, , x, Win_Y
}
FileAppend, [%A_MM%��%A_DD%�� %A_Hour%:%A_Min%:%A_Sec%] - [ ���� ]||`n,log\punipuni%A_MM%%A_DD%.log


�����:
settimer, ��ſ���üũ,1000
Gui, Submit, Nohide
loopcount=0
watchtype=1
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%

ȭ��ǥã��:
if(�ݺ����=2)
{
	GuiControl ,, coun, %loopcount%
	GuiControl ,, wim, ������������ ã����
	imagesearch , Fx, Fy,  18+Win_X, 170+Win_Y, 450+Win_X, 700+Win_Y, *110 img\������������1.png
	if errorlevel=0
	{
		r�ݺ�x:=Fx+10+Win_X
		r�ݺ�y:=Fy+10+Win_Y
	}
	else
	{
		loopcount:=loopcount+1
		goto ȭ��ǥã��
	}
}
else if(�ݺ����=1 or �ݺ����=4 or �ݺ����=6)
{
	WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
	r�ݺ�x:=�ݺ�x
	r�ݺ�y:=�ݺ�y
}
else if(�ݺ����=3)
{
	pdrag(228,680,228,600)
	sleep 500
	r�ݺ�x:=�ݺ�x
	r�ݺ�y:=�ݺ�y
}

��Ʋ�ξ�����:
if(�ݺ����=7)
{
	pclick(230,345)
	pclick(44,465)
	pclick(140,415)
	pclick(135,555)
	pclick(230,465)
	pclick(322,415)
	pclick(322,555)
	pclick(415,465)
	sleep 2000
	imagesearch , Fx, Fy,  57+Win_X, 700+Win_Y, 270+Win_X, 800+Win_Y,*80 img\�ڷ�4.png
	if errorlevel=0
	{
		sleep 500
		pclick(Fx+10,Fy+10)
		sleep 50
		pclick(Fx+15,Fy+15)
		sleep 50
		pclick(Fx+20,Fy+15)		
		sleep 400
		goto ��������������	
	}	
	imagesearch , Fx, Fy, 250+Win_X, 611+Win_Y, 410+Win_X, 800+Win_Y,*80 img\playbutton2.png
	if errorlevel=0
	{
	  goto ��������������	
	}
	else
	{
		goto ��Ʋ�ξ�����
	}
}





����Ʈã��:
if(�ݺ����=5)
{
	GuiControl ,, coun, %loopcount%
	GuiControl ,, wim, ����Ʈ Ȱ���Ǻ�
	imagesearch , Fx, Fy,  309+Win_X, 650+Win_Y, 340+Win_X, 670+Win_Y, *80 img\����Ʈ��.png
	if errorlevel=0
	{
		GuiControl ,, wim, ����Ʈ ��
		sleep 1500
		goto ����Ʈ��������ã��
	}	
	imagesearch , Fx, Fy,  356+Win_X, 554+Win_Y, 398+Win_X, 617+Win_Y, *80 img\no����Ʈ.png
	if errorlevel=0
	{
		GuiControl ,, wim, ����Ʈ ����
		r�ݺ�x:=�ݺ�x
		r�ݺ�y:=�ݺ�y
		goto ��������������ĸ��
	}
	imagesearch , Fx, Fy,  364+Win_X, 580+Win_Y, 407+Win_X, 627+Win_Y, *80 img\����Ʈ��.png
	if errorlevel=0
	{
		GuiControl ,, wim, ����Ʈ ������
		pclick(Fx+10,Fy+10)
		sleep 1000
		pclick(233,515)
		sleep 8000
		goto ����Ʈã��
	}
	else
	{
		loopcount:=loopcount+1
		sleep 100
		pclick(200,515)
		goto ����Ʈã��
	}
}
else
{
	goto ��������������ĸ��
}


����Ʈ��������ã��:	
	GuiControl ,, coun, %loopcount%
	GuiControl ,, wim, ���� �������� ã����

	imagesearch , Fx, Fy,  100+Win_X, 180+Win_Y, 340+Win_X, 400+Win_Y, *100 img\������������1.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		r�ݺ�x:=PointX+10
		r�ݺ�y:=PointY+10
		settimer,����Ʈ����Ȯ��,off
		goto ��������������ĸ��
	}
	imagesearch , Fx, Fy,  100+Win_X, 180+Win_Y, 340+Win_X, 400+Win_Y, *100 img\������������2.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		r�ݺ�x:=PointX+10
		r�ݺ�y:=PointY+10
		settimer,����Ʈ����Ȯ��,off
		goto ��������������ĸ��
	}
	imagesearch , Fx, Fy,  100+Win_X, 270+Win_Y, 340+Win_X, 600+Win_Y, *120 img\����ã��.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		imagesearch , Fx, Fy,  PointX-120+Win_X, PointY+Win_Y, PointX+50+Win_X, PointY+170+Win_Y, *100 img\�Ķ���.png
		Point1X=%Fx%
		Point1Y=%Fy%
		if errorlevel=0
		{
		pclick(PointX,PointY)
		r�ݺ�x:=Point1X+10
		r�ݺ�y:=Point1Y+10
		settimer,����Ʈ����Ȯ��,off
		goto ��������������ĸ��
		}
	}		
	imagesearch , Fx, Fy,  100+Win_X, 180+Win_Y, 340+Win_X, 400+Win_Y, *100 img\�ʷ���.png
	PointX=%Fx%
	PointY=%Fy%
	if errorlevel=0
	{
		tooltip,�ʷ�ã��
		imagesearch , Fx, Fy,  PointX-120+Win_X, PointY+Win_Y, PointX+50+Win_X, PointY+170+Win_Y, *100 img\�Ķ���.png
		PointX=%Fx%
		PointY=%Fy%
		if errorlevel=0
		{
			r�ݺ�x:=PointX+10
			r�ݺ�y:=PointY+10
			settimer,����Ʈ����Ȯ��,off
			goto ��������������ĸ��
		}
	}
	imagesearch , Fx, Fy,  197+Win_X, 400+Win_Y, 360+Win_X, 721+Win_Y,*80 img\okbutton4.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+15,PointY+15)
	}	
	if(loopcount>0 and mod(loopcount,20)=0)
	{
		pdrag(235,230,235,245)
	}
	loopcount:=loopcount+1
	goto ����Ʈ��������ã��
return


��������������ĸ��:
cx1:=r�ݺ�x-18
cy1:=r�ݺ�y-18
cx2:=r�ݺ�x+18
cy2:=r�ݺ�y+18

Cpos=%cx1%,%cy1%,%cx2%,%cy2%
CaptureScreen(Cpos, 0, "img\�������䱫.png")



������������:
sleep 100
pclick(r�ݺ�x,r�ݺ�y)
sleep 300
pclick(r�ݺ�x,r�ݺ�y)
sleep 300
pclick(r�ݺ�x,r�ݺ�y)
;goto �÷��̹�ưã��


��������������:
repeatcount:= repeatcount + 1
GuiControl ,, stats,�ݺ�Ƚ��(%repeatcount%)
;GuiControl ,, ģ��Ƚ��,ģ��(%friendcount1%)
loopcount:=0



����Ȯ��:
GuiControl ,, wim, ����Ȯ��
GuiControl ,, coun,%loopcount%/5
imagesearch , Fx, Fy, 408+Win_X, 794+Win_Y, 450+Win_X, 834+Win_Y,*80 img\����Ȯ��.png
if errorlevel=0
{
	loopcount:=0
}
else
{
	pclick(20,66)
	sleep 500
	imagesearch , Fx, Fy, 408+Win_X, 794+Win_Y, 450+Win_X, 834+Win_Y,*80 img\����Ȯ��.png
	if errorlevel=0
	{
		loopcount:=0
	}
	else	if(loopcount>4)
	{
		kakaosend()
		puni_recovery()
		return
	}
	else
	{
		imagesearch , Fx, Fy, 0+Win_X, 0+Win_Y, 450+Win_X, 800+Win_Y,*80 img\����Ȯ��.png
		if errorlevel=0
		{
			pdrag(fx,fy,450,850)
			goto ����Ȯ��
		}
		imagesearch , Fx, Fy, 38+Win_X, 610+Win_Y, 450+Win_X, 840+Win_Y,*80 img\����Ȯ��.png
		if errorlevel=0
		{
			pdrag(fx,fy,450,850)
			goto ����Ȯ��
		}		
		run,"win.bat" ,,hide
		sleep 7500
		run,taskkill -f -im conhost.exe ,,hide
		run,taskkill -f -im adb.exe ,,hide
		sleep 700 
		run , lnk\frep.lnk
		sleep 2500
		run , lnk\puni.lnk
		sleep 2500
		windowsetting(������)
		loopcount:=loopcount+1
		goto ����Ȯ��
	}
}




�÷��̹�ưã��:
GuiControl ,, wim, �÷��̹�ư ���
GuiControl ,, coun,%loopcount%/500
imagesearch , Fx, Fy,  187+Win_X, 766+Win_Y, 260+Win_X, 800+Win_Y,*80 img\����.png
PointX=%Fx%
PointY=%Fy%
if errorlevel=0
{
	sleep 500
	pclick(PointX+5,PointY+10)
	sleep 50
	pclick(PointY+15,PointY+15)
	sleep 50
	pclick(PointY+20,PointY+15)		
	sleep 3200
	goto �����
}

imagesearch , Fx, Fy,  74+Win_X, 710+Win_Y, 190+Win_X, 800+Win_Y,*80 img\�ڷ�1.png
PointX=%Fx%
PointY=%Fy%
if errorlevel=0
{
	sleep 500
	pclick(PointX+10,PointY+10)
	sleep 50
	pclick(PointX+15,PointY+15)
	sleep 50
	pclick(PointX+20,PointY+15)		
	sleep 400
	goto �����
}

imagesearch , Fx,Fy, 250+Win_X, 611+Win_Y, 410+Win_X, 800+Win_Y,*80 img\playbutton2.png
PX=%Fx%
PY=%Fy%
if errorlevel=0
{
	if(PY<700)
	{
		if(��üũ=1)
		{
			imagesearch , Fx,Fy, 213+Win_X, 626+Win_Y, 244+Win_X, 650+Win_Y,*50 img\9��.png
			if errorlevel=0
			{
				team:=9
			}
			imagesearch , Fx,Fy, 213+Win_X, 626+Win_Y, 244+Win_X, 650+Win_Y,*50 img\10��.png
			if errorlevel=0
			{
				team:=10
			}
			gosub ������
		}
		sleep 500
		pclick(345, 624)
		sleep 50
		pclick(355, 614)
		sleep 50
		pclick(335, 614)
		sleep 50
		pclick(355, 624)
		sleep 50
		pclick(335, 634)	
		sleep 50
	}
	else
	{
		sleep 500
		pclick(345, 774)
		sleep 50
		pclick(355, 774)
		sleep 50
		pclick(335, 774)
		sleep 50
		pclick(355, 774)
		sleep 50
		pclick(335, 774)
		sleep 700
		pclick(332,510)
		
	}
}
else 
{
	if(loopcount>500)
	{
		kakaosend()
		puni_recovery()
		return
	}
	else
	{
		loopcount:=loopcount+1
		goto �÷��̹�ưã��
	}
}

loopcount:=0
GuiControl ,, wim, ���ӷε���

sleep 5200

������:
GuiControl ,, coun, %loopcount%/500
GuiControl ,, wim, ���ӽ��� ���
imagesearch , Fx, Fy,  139+Win_X, 56+Win_Y, 163+Win_X, 83+Win_Y,*80 img\foodbutton.png
if errorlevel=0
{
	sleep 1000
	GuiControl ,, coun, 0/200
	GuiControl ,, wim, ���� ������
	
	if(����=1)
	{
		sleep 2000
		pclick(155,77)
		sleep 1000
		pclick(362,472)
		sleep 500
		pclick(335,605)
		sleep 4000
		pclick(226,515)
		sleep 1000
		pclick(132,610)
	}
	
	if(ù��°=2)
	{
	pclick(92,218)
	}
	else	if(ù��°=3){
		pclick(231,218)
	}
	else	if (ù��°=4){
		pclick(370,218)
	}
	sleep 20

		pclick(422,815) ;���� Ŭ��
		if(�ʸ��=1)
		{
			settimer, �ʻ��üũ, 100
		}
		else
		{
			settimer, ����Ʈ�ʻ��üũ, 100
		}
		


	
	if(ù���ð�>1)
		gosub �ι�°Ÿ��
	
	if(�ι��ð�>1)
		gosub ����°Ÿ��
}
else
{
	if(loopcount>500)
	{
		kakaosend()
		puni_recovery()
		return
	}
	else
	{
		;tooltip, ���Ĺ�ư ���, 280, 440
		loopcount:=loopcount+1
		goto ������
	}
}

;	sleep 10000
	loopcount:=0
	settimer, ��������üũ, 500	

return

�ι�°Ÿ��:
sl:=ù���ð�+3
GuiControl ,, wim, ùŸ��%sl%�ʰ� ����
sl:=sl*1000
sleep, sl

if(�ι�°=2)
{
	pclick(92,218)
	sleep 10
	pclick(92,218)
}
else 
{
	if(�ι�°=3)
	{
		pclick(231,218)
		sleep 10
		pclick(231,218)
	}
	else
	{
		if(�ι�°=4)
		{
			pclick(370,218)
			sleep 10		
			pclick(370,218)
		}
	}
}
sleep 10
pclick(422,815) ;���� Ŭ��
return



����°Ÿ��:
sl:=�ι��ð�+3
GuiControl ,, wim, �ι�°Ÿ��%sl%�ʰ� ����
sl:=sl*1000
sleep, sl

if(����°=2)
{
	pclick(92,218)
	sleep 10
	pclick(92,218)
}
else
{
	if(����°=3)
	{
		pclick(231,218)
		sleep 10
		pclick(231,218)
	}
	else
	{
		if(����°=4)
		{
			pclick(370,218)
			sleep 10
			pclick(370,218)
		}
	}
}
sleep 10
GuiControl ,, wim, ����°Ÿ�� ����
pclick(422,815) ;���� Ŭ��
return


�ʻ����:
GuiControl ,, wim, �ʻ�� �����
if (��1>1)
{
	loop, 150
	{
		pclick(�䱫%��1%x,�䱫%��1%y)
		sleep 20
	}
	sleep, %�ʰ���1%
}


if (��2>1)
{
	loop, 150
	{
		pclick(�䱫%��2%x,�䱫%��2%y)
		sleep 20
	}
	sleep, %�ʰ���2%
}


if (��3>1)
{
	loop, 150
	{
		pclick(�䱫%��3%x,�䱫%��3%y)
		sleep 20
	}
	sleep, %�ʰ���3%
}

if (��4>1)
{
	loop, 150
	{
		pclick(�䱫%��4%x,�䱫%��4%y)
		sleep 20
	}
	sleep, %�ʰ���4%
}

if (��5>1)
{
	loop, 150
	{
		pclick(�䱫%��5%x,�䱫%��5%y)
		sleep 20
	}
}

if (�ʻ������>1)
{
	pclick(424,815)
}
else
{
	pclick(26,815)
}
/* ���� ���� �ʻ�� 
GuiControl ,, wim, �ʻ�� �����
pclick(26,815)
sleep 100
pclick(26,815)
sleep 500
imagesearch , Fx, Fy, 408+Win_X, 794+Win_Y, 450+Win_X, 834+Win_Y,*80 img\����Ȯ��.png
if errorlevel=0
{
	pclick(26,815)
}
*/
	allreset()
	loopcount=0
	sleep 5000
	settimer, �ʻ��üũ, 100
	return


��������üũ:
imagesearch , Fx, Fy,  196+Win_X, 597+Win_Y, 261+Win_X, 718+Win_Y,*80 img\Ȯ��2.png
PointX=%Fx%
PointY=%Fy%
if errorlevel=0
	{
		allreset()
		settimer, �ʻ��üũ, off
		settimer, ����Ʈ�ʻ��üũ, off
		settimer, ��������üũ, off
		settimer, ��Ŭ, off
		loopcount:=0
		sleep 100
		pclick(PointX,PointY)
		goto ����������
	}
imagesearch , Fx, Fy,  99+Win_X, 293+Win_Y, 176+Win_X, 323+Win_Y,*80 img\�̾��ϱ�.png
if errorlevel=0
	{
		pclick(124, 531)
	}
loopcount:=loopcount+1
GuiControl ,, coun, %loopcount%/%gametime%
	if(loopcount>gametime)
	{
		kakaosend()
		puni_recovery()
		return
	}
return

����������:
GuiControl ,, coun, %loopcount%/1000
GuiControl ,, wim, ��������
imagesearch , Fx, Fy,  196+Win_X, 597+Win_Y, 261+Win_X, 718+Win_Y,*80 img\Ȯ��2.png
PointX=%Fx%
PointY=%Fy%
if errorlevel=0
{
	pclick(PointX+10,PointY+15)
	sleep 10
	pclick(PointX+10,PointY+15)
	sleep 100
	pclick(PointX+26,PointY+15)
	sleep 10
	pclick(PointX+26,PointY+15)
	GuiControl ,, wim, ����ġ â Ȯ�δ��
	goto Ȯ��2
}
else
{
	if(loopcount>1000)
	{
		kakaosend()
		puni_recovery()
		return
	}
	else
	{
	;tooltip, ���Ĺ�ư ���, 280, 440
	loopcount:=loopcount+1	
	goto ����������
	}
}
return


Ȯ��2:
GuiControl ,, coun, %loopcount%/1000
GuiControl ,, wim, ����ġ Ȯ��â
imagesearch , Fx, Fy,  196+Win_X, 597+Win_Y, 261+Win_X, 718+Win_Y,*80 img\Ȯ��2.png
PointX=%Fx%
PointY=%Fy%
if errorlevel=0
{
	pclick(PointX+10,PointY+15)
	sleep 10
	pclick(PointX+10,PointY+15)
	sleep 100
	pclick(PointX+26,PointY+15)
	sleep 10
	pclick(PointX+26,PointY+15)	
	loopcount:=0
	goto ��������Ȯ��
}
imagesearch , Fx, Fy,  196+Win_X, 597+Win_Y, 261+Win_X, 718+Win_Y,*80 img\okbutton.png
PointX=%Fx%
PointY=%Fy%
if errorlevel=0
{
	pclick(PointX+10,PointY+15)
	sleep 10
	pclick(PointX+10,PointY+15)
	sleep 100
	pclick(PointX+26,PointY+15)
	sleep 10
	pclick(PointX+26,PointY+15)	
	loopcount:=0
	goto ��������Ȯ��
}
else
{
	if(loopcount>1000)
	{
		kakaosend()
		puni_recovery()
		return
	}
	else
	{
	loopcount:=loopcount+1	
	goto Ȯ��2
	}
}
return


��������Ȯ��:
if(����Ƚ��>1)
{
	if(mod(repeatcount,����Ƚ��*10)=0)
	{
		goto �Ѵ������
	}
}
GuiControl ,, coun, %loopcount%/500
GuiControl ,, wim, ��������Ȯ��
imagesearch , Fx, Fy,  252+Win_X, 789+Win_Y, 326+Win_X, 818+Win_Y,*5 img\letterbox.png
if errorlevel=0
{
	sleep 1000
	settimer, ��ſ���üũ,off
	goto �����
}
else
{
	imagesearch , Fx, Fy,  393+Win_X, 540+Win_Y, 431+Win_X, 575+Win_Y,*80 img\friend_ok.png
	PointX=%Fx%
	PointY=%Fy%
	if errorlevel=0
	{
		pclick(PointX,PointY)
		sleep 100
		pclick(PointX,PointY)		
		sleep 100
	}
	imagesearch , Fx, Fy,  197+Win_X, 480+Win_Y, 360+Win_X, 721+Win_Y,*50 img\okbutton.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+10,PointY+10)
		sleep 50
		pclick(PointX+15,PointY+15)
		sleep 50
		pclick(PointX+20,PointY+15)		
		sleep 500
	}
	imagesearch , Fx, Fy,  196+Win_X, 580+Win_Y, 374+Win_X, 718+Win_Y,*80 img\Ȯ��2.png
	PointX=%Fx%
	PointY=%Fy%
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+10,PointY+10)
		sleep 50
		pclick(PointX+15,PointY+15)
		sleep 50
		pclick(PointX+20,PointY+15)		
		sleep 500
	}
	imagesearch , Fx, Fy,  196+Win_X, 580+Win_Y, 374+Win_X, 718+Win_Y,*80 img\Ȯ��1.png
	PointX=%Fx%
	PointY=%Fy%
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+10,PointY+10)
		sleep 50
		pclick(PointX+15,PointY+15)
		sleep 50
		pclick(PointX+20,PointY+15)		
		sleep 500
	}	
	imagesearch , Fx, Fy,  197+Win_X, 480+Win_Y, 360+Win_X, 721+Win_Y,*80 img\okbutton2.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+10,PointY+10)
		sleep 50
		pclick(PointX+15,PointY+15)
		sleep 50
		pclick(PointX+20,PointY+15)		
		sleep 500
	}
	imagesearch , Fx, Fy,  195+Win_X, 630+Win_Y, 255+Win_X, 666+Win_Y,*80 img\okbutton3.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+10,PointY+10)
		sleep 50
		pclick(PointX+15,PointY+15)
		sleep 50
		pclick(PointX+20,PointY+15)		
		sleep 500
	}
	imagesearch , Fx, Fy,  197+Win_X, 480+Win_Y, 360+Win_X, 721+Win_Y,*80 img\okbutton4.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+10,PointY+10)
		sleep 50
		pclick(PointX+15,PointY+15)
		sleep 50
		pclick(PointX+20,PointY+15)		
		sleep 500
	}
	imagesearch , Fx, Fy,  57+Win_X, 497+Win_Y, 270+Win_X, 800+Win_Y,*80 img\�ڷ�.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+10,PointY+10)
		sleep 50
		pclick(PointX+15,PointY+15)
		sleep 50
		pclick(PointX+20,PointY+15)		
		sleep 500
	}
	imagesearch , Fx, Fy,  57+Win_X, 497+Win_Y, 270+Win_X, 800+Win_Y,*80 img\�ڷ�1.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+10,PointY+10)
		sleep 50
		pclick(PointX+15,PointY+15)
		sleep 50
		pclick(PointX+20,PointY+15)		
		sleep 500
	}
	
	imagesearch , Fx, Fy,  57+Win_X, 497+Win_Y, 270+Win_X, 800+Win_Y,*80 img\�ڷ�2.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+10,PointY+10)
		sleep 50
		pclick(PointX+15,PointY+15)
		sleep 50
		pclick(PointX+20,PointY+15)		
		sleep 500
	}	
	imagesearch , Fx, Fy,  187+Win_X, 766+Win_Y, 260+Win_X, 800+Win_Y,*120 img\����.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+10,PointY+10)
		sleep 50
		pclick(PointX+15,PointY+15)
		sleep 50
		pclick(PointX+20,PointY+15)		
		sleep 2200
	}		
	imagesearch , Fx, Fy,  60+Win_X, 767+Win_Y, 113+Win_X, 800+Win_Y,*100 img\��Ż������.png
	PointX=%Fx%
	PointY=%Fy%		
	if errorlevel=0
	{
		sleep 500
		pclick(PointX+10,PointY+10)
		sleep 50
		pclick(PointX+15,PointY+15)
		sleep 50
		pclick(PointX+20,PointY+15)		
		sleep 500
	}
	imagesearch , Fx, Fy,  83+Win_X, 498+Win_Y, 171+Win_X, 533+Win_Y,*50 img\�ƴϿ�2.png
	if errorlevel=0
	{
		gosub �ƴϿ��Ǵ�
	}
	
	if(loopcount>499)
	{
		kakaosend()
		puni_recovery()
		return
	}
}
loopcount:=loopcount+1			
goto ��������Ȯ��
return

�ƴϿ��Ǵ�:
imagesearch , Fx, Fy,  154+Win_X, 319+Win_Y, 239+Win_X, 357+Win_Y,*50 img\ȹ��1.png
if errorlevel=0
{
	pclick(336,516) ;��
}
imagesearch , Fx, Fy,  100+Win_X, 323+Win_Y, 177+Win_X, 355+Win_Y,*50 img\ȹ��2.png
if errorlevel=0
{
	pclick(126,518)	;�ƴϿ�
}
imagesearch , Fx, Fy,  133+Win_X, 323+Win_Y, 203+Win_X, 355+Win_Y,*50 img\����ȸ.png
if errorlevel=0
{
	pclick(126,518)	;�ƴϿ�
}
return


��Ŭ:
slsec=1
pclick(149,755)
sleep %slsec%
pclick(316,755)
sleep %slsec%
pclick(236,785)
sleep %slsec%
pclick(204,728)
sleep %slsec%
pclick(283,721)
sleep %slsec%
pclick(91,719)
sleep %slsec%
pclick(139,670)
sleep %slsec%
pclick(339,632)
sleep %slsec%
pclick(389,704)
sleep %slsec%
return

�ʻ��üũ:

WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
if �ʻ��1=1
	skill1stats=1
if �ʻ��2=1
	skill2stats=1
if �ʻ��3=1
	skill3stats=1
if �ʻ��4=1
	skill4stats=1
if �ʻ��5=1
	skill5stats=1
if �ǹ�üũ=0
	feverstats=1

if(�ʻ��1=2 and skill1stats=0)
{
	üũx:=�ʻ�������1x+Win_X
	üũy:=�ʻ�������1y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�11%, %��������%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, ��ų1,img\skill1.png
		  skill1stats:=1
	}
}
if(�ʻ��1>1 and skill1stats<2)
{
	üũx:=�ʻ�������1x+Win_X
	üũy:=�ʻ�������1y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�12%, %��������%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, ��ų1,img\skill2.png
		  skill1stats:=2
	}
}
if(�ʻ��2=2 and skill2stats=0){
	üũx:=�ʻ�������2x+Win_X
	üũy:=�ʻ�������2y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�21%, %��������%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, ��ų2,img\skill1.png
		 skill2stats:=1
	}
}
if(�ʻ��2>1 and skill2stats<2){
	üũx:=�ʻ�������2x+Win_X
	üũy:=�ʻ�������2y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�22%, %��������%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, ��ų2,img\skill2.png
		 skill2stats:=2
	}
}
if(�ʻ��3=2 and skill3stats=0){
	üũx:=�ʻ�������3x+Win_X
	üũy:=�ʻ�������3y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�31%, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų3,img\skill1.png
		skill3stats:=1
	}
}

if(�ʻ��3>1 and skill3stats<2){
	üũx:=�ʻ�������3x+Win_X
	üũy:=�ʻ�������3y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�32%, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų3,img\skill2.png
		skill3stats=2
	}
}

if(�ʻ��4=2 and skill4stats=0)
{
	üũx:=�ʻ�������4x+Win_X
	üũy:=�ʻ�������4y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�41%, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų4,img\skill1.png
		skill4stats=1
	}
}

if(�ʻ��4>1 and skill4stats<2){
	üũx:=�ʻ�������4x+Win_X
	üũy:=�ʻ�������4y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�42%, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų4,img\skill2.png
		skill4stats=2
	}
}
if(�ʻ��5=2 and skill5stats=0){
	üũx:=�ʻ�������5x+Win_X
	üũy:=�ʻ�������5y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�51%, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų5,img\skill1.png
		skill5stats=1
	}
}
if(�ʻ��5>1 and skill5stats<2){
	üũx:=�ʻ�������5x+Win_X
	üũy:=�ʻ�������5y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�52%, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų5,img\skill2.png
		skill5stats=2
	}
}


; �ǹ� ������ üũ ----------------------------------------------------------------------------------------------------

�ǹ�üũ:
	if(feverstats=0)
	{
		üũx:=�ǹ�������1_25x+Win_X
		üũy:=�ǹ�������1_25y+Win_Y
		PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, 0X99EE7A, %��������%, Fast RGB
		if errorlevel=0
		{
			GuiControl ,, �ǹ�������,25
			feverstats=25
		}
	}

	if(feverstats=25)
	{
		üũx:=�ǹ�������1_50x+Win_X
		üũy:=�ǹ�������1_50y+Win_Y
		PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, 0XA1F580, %��������%, Fast RGB
		if errorlevel=0
		{
			GuiControl ,, �ǹ�������,50
			feverstats=50
		}
	}

	if(feverstats=50)
	{
		üũx:=�ǹ�������1_75x+Win_X
		üũy:=�ǹ�������1_75y+Win_Y
		PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, 0XA1EE78, %��������%, Fast RGB
		if errorlevel=0
		{
			GuiControl ,, �ǹ�������,75
			feverstats=75
		}
	}

	if(feverstats=75)
	{
		üũx:=�ǹ�������1_25x+Win_X
		üũy:=�ǹ�������1_25y+Win_Y
		PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, 0XFFF9AD, %��������%, Fast RGB
		if errorlevel=0
		{
			GuiControl ,, �ǹ�������,100
			feverstats=1
		}
	}


�ʻ������:



if ( skill1stats>0 and skill2stats>0 and skill3stats>0 and skill4stats>0 and skill5stats>0 and feverstats=1)
{
	settimer, �ʻ��üũ, off
	goto �ʻ����
}


return

����Ʈ�ʻ��üũ:

WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
if(�ʻ��1=2)
{
	üũx:=�ʻ�������1x+Win_X
	üũy:=�ʻ�������1y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�11%, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų1,img\skill1.png
		loop, 20
		{
			pclick(�䱫2x,�䱫2y)
			sleep 10
		}
		GuiControl ,, ��ų1,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(�ʻ��1>1)
{
	üũx:=�ʻ�������1x+Win_X
	üũy:=�ʻ�������1y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�12%, %��������%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, ��ų1,img\skill2.png
		loop, 20
		{
			pclick(�䱫2x,�䱫2y)
			sleep 10
		}
		GuiControl ,, ��ų1,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(�ʻ��2=2){
	üũx:=�ʻ�������2x+Win_X
	üũy:=�ʻ�������2y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�21%, %��������%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, ��ų2,img\skill1.png
		loop, 20
		{
			pclick(�䱫3x,�䱫3y)
			sleep 10
		}
		GuiControl ,, ��ų2,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(�ʻ��2>1 ){
	üũx:=�ʻ�������2x+Win_X
	üũy:=�ʻ�������2y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�22%, %��������%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, ��ų2,img\skill2.png
		loop, 20
		{
			pclick(�䱫3x,�䱫3y)
			sleep 10
		}
		GuiControl ,, ��ų2,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(�ʻ��3=2){
	üũx:=�ʻ�������3x+Win_X
	üũy:=�ʻ�������3y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�31%, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų3,img\skill1.png
		loop, 20
		{
			pclick(�䱫4x,�䱫4y)
			sleep 10
		}
		GuiControl ,, ��ų3,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}

if(�ʻ��3>1){
	üũx:=�ʻ�������3x+Win_X
	üũy:=�ʻ�������3y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�32%, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų3,img\skill2.png
		loop, 20
		{
			pclick(�䱫4x,�䱫4y)
			sleep 10
		}
		GuiControl ,, ��ų3,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}

if(�ʻ��4=2)
{
	üũx:=�ʻ�������4x+Win_X
	üũy:=�ʻ�������4y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�41%, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų4,img\skill1.png
		loop, 20
		{
			pclick(�䱫5x,�䱫5y)
			sleep 10
		}
		GuiControl ,, ��ų4,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}

if(�ʻ��4>1){
	üũx:=�ʻ�������4x+Win_X
	üũy:=�ʻ�������4y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, 0xCE225F, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų4,img\skill2.png
		loop, 20
		{
			pclick(�䱫5x,�䱫5y)
			sleep 10
		}
		GuiControl ,, ��ų4,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(�ʻ��5=2){
	üũx:=�ʻ�������5x+Win_X
	üũy:=�ʻ�������5y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, %�ʻ���÷�51%, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų5,img\skill1.png
		loop, 20
		{
			pclick(�䱫6x,�䱫6y)
			sleep 10
		}
		GuiControl ,, ��ų5,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(�ʻ��5>1){
	üũx:=�ʻ�������5x+Win_X
	üũy:=�ʻ�������5y+Win_Y
	PixelSearch dx, dy, üũx-1, üũy-1, üũx+1,üũy+1, 0xCE225F, %��������%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, ��ų5,img\skill2.png
		loop, 20
		{
			pclick(�䱫6x,�䱫6y)
			sleep 10
		}
		GuiControl ,, ��ų5,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}

return


ĳ��ȭ��:
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
ControlGetFocus, CCNN ,%title%
imagesearch , Fx, Fy,  195+Win_X, 150+Win_Y, 260+Win_X, 180+Win_Y,*30 img\�ε�.png
	if errorlevel=0
	{
		return
	}
pclick(210,80)
sleep 500
goto ĳ��ȭ��

return



ĳ��������:
if(ùĳ=1)
{
	goto ���ӽ���
}

if(���=1)
{
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\ĳ��1-1.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto ���ӽ���
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\ĳ��1-2.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto ���ӽ���
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\ĳ��1-3.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto ���ӽ���
	}	
	pclick(210,80)
	sleep 500
	goto ĳ��������
}

if(����=1)
{
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*50 img\ĳ��2-1.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto ���ӽ���
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*50 img\ĳ��2-2.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto ���ӽ���
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*50 img\ĳ��2-3.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto ���ӽ���
	}		
	pclick(210,80)
	sleep 500
	goto ĳ��������
}

if(�丮=1)
{
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\ĳ��3-1.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto ���ӽ���
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\ĳ��3-2.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto ���ӽ���
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\ĳ��3-3.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto ���ӽ���
	}	
	pclick(210,80)
	sleep 500
	goto ĳ��������
}

return


���ӽ���:
sleep 700
pclick(330,780)
return

����Ȯ��:
sleep 1000
imagesearch , Fx, Fy,  60+Win_X, 767+Win_Y, 265+Win_X, 793+Win_Y,*100 img\�ڷ�1.png
	if errorlevel=0
	{
		pclick(237,690)
		sleep 1000
		pclick(230,780)
		sleep 1000
		
	}
imagesearch , Fx, Fy,  60+Win_X, 500+Win_Y, 262+Win_X, 600+Win_Y,*100 img\�ڷ�4.png
	if errorlevel=0
	{
		pclick(Fx,Fy)
		sleep 1000
	}
 imagesearch , Fx, Fy,  60+Win_X, 767+Win_Y, 114+Win_X, 800+Win_Y,*80 img\��Ż������.png
 if errorlevel=0
{
	pclick(fx+10,fy+10)
}	
imagesearch , Fx, Fy,  197+Win_X, 400+Win_Y, 360+Win_X, 721+Win_Y,*80 img\okbutton.png
PointX=%Fx%
PointY=%Fy%	
if errorlevel=0
{
	sleep 500
	pclick(PointX+10,PointY+10)
	sleep 50
	pclick(PointX+15,PointY+15)
	sleep 50
	pclick(PointX+20,PointY+15)		
	sleep 500
}
imagesearch , Fx, Fy,  252+Win_X, 789+Win_Y, 326+Win_X, 818+Win_Y,*50 img\letterbox.png
	if errorlevel=0
	{
		return
	}
goto ����Ȯ��	
return

��������ġã��1:
if(�ݺ����=5)
{
	goto ����Ʈã��
}

if(�ݺ����=3)
{
	sleep 2000
	pdrag(228,680,228,600)
	sleep 500
	r�ݺ�x:=�ݺ�x+Win_X
	r�ݺ�y:=�ݺ�y+Win_Y	
	pclick(r�ݺ�x,r�ݺ�y)
	sleep 2000
	FileAppend, [%A_MM%��%A_DD%�� %A_Hour%:%A_Min%:%A_Sec%] - [ �����Ϸ� ]||`n,log\punipuni%A_MM%%A_DD%.log	
	goto ��������������
}
if(�ݺ����=7)
{
	FileAppend, [%A_MM%��%A_DD%�� %A_Hour%:%A_Min%:%A_Sec%] - [ �����Ϸ� ]||`n,log\punipuni%A_MM%%A_DD%.log	
	goto ��Ʋ�ξ�����
}
if(�ݺ����=4 or �ݺ����=6)
{
	sleep 2000
	r�ݺ�x:=�ݺ�x+Win_X
	r�ݺ�y:=�ݺ�y+Win_Y	
	pclick(r�ݺ�x,r�ݺ�y)
	sleep 2000
	FileAppend, [%A_MM%��%A_DD%�� %A_Hour%:%A_Min%:%A_Sec%] - [ �����Ϸ� ]||`n,log\punipuni%A_MM%%A_DD%.log
	goto ��������������
}

 imagesearch , Fx, Fy,  7+Win_X, 200+Win_Y, 450+Win_X, 650+Win_Y,*50 img\�������䱫.png
 if errorlevel=0
{
	pclick(fx+15,fy+15)
	sleep 1000
	FormatTime, �ð�, a_now, tt hh��mm��ss��
	;ControlSend,RichEdit20W1,�����Ϸ� %�ð�%{enter}{enter},�ѴϻѴ� ��Ȳ��
	FileAppend, [%A_MM%��%A_DD%�� %A_Hour%:%A_Min%:%A_Sec%] - [ �����Ϸ� ]||`n,log\punipuni%A_MM%%A_DD%.log
	goto ��������������
}
else
{

	if(findnum < 70)
	{
		findnum:=findnum+1
		GuiControl ,, coun, %findnum%/70
		GuiControl ,, wim, ��ġã��
		goto ��������ġã��1
	}
	else if(findnum1 < 33)
	{
		pdrag(228,680,228,660)
		sleep 600
		findnum:=0
		findnum1:=findnum1+1
		goto ��������ġã��1
	}
	else if(findnum1 < 66)
	{
		pdrag(228,660,228,680)
		sleep 600
		findnum:=0
		findnum1:=findnum1+1
		goto ��������ġã��1
	}
	else
	{
		sleep 600
		findnum:=0
		findnum1:=0
		goto ��������ġã��1
	}
}
return




��ſ���üũ:
 imagesearch , Fx, Fy,  83+Win_X, 363+Win_Y, 204+Win_X, 412+Win_Y,*100 img\��ſ���2.png
 if errorlevel=0
{
   settimer,��Ŭ,off
   imagesearch , Fx, Fy,  299+Win_X, 499+Win_Y, 362+Win_X, 530+Win_Y,*80 img\����.png
   PointX=%Fx%
   PointY=%Fy%
   if errorlevel=0
   {
      sleep 500
      pclick(PointX+10,PointY+10)
   }
}
 imagesearch , Fx, Fy,  83+Win_X, 363+Win_Y, 204+Win_X, 412+Win_Y,*100 img\��ſ���3.png
 if errorlevel=0
{
   settimer,��Ŭ,off
   imagesearch , Fx, Fy,  299+Win_X, 499+Win_Y, 362+Win_X, 530+Win_Y,*80 img\����.png
   PointX=%Fx%
   PointY=%Fy%
   if errorlevel=0
   {
      sleep 500
      pclick(PointX+10,PointY+10)
   }
}
return

����Ʈ����Ȯ��:

return


allreset() {
GuiControl ,, ��ų1,img\skill0.png
GuiControl ,, ��ų2,img\skill0.png
GuiControl ,, ��ų3,img\skill0.png
GuiControl ,, ��ų4,img\skill0.png
GuiControl ,, ��ų5,img\skill0.png
GuiControl ,, �ǹ�������,0
skill1stats:=0
skill2stats:=0
skill3stats:=0
skill4stats:=0
skill5stats:=0
feverstats:=0
}

windowsetting(mode)
{
	if(mode=0)
	{
		WinActivate , %title%
		winmove , %title%,,%helperx%, %helpery%, 460, 1000
		winmove , %title%,,%helperx%, %helpery%, 460, 888
	}
	else
	{
		WinActivate , %title%
		winmove , %title%,,3210, 0, 460, 888
	}
}


kakaosend()
{
/*	
	send, {PrintScreen}{PrintScreen}
	sleep 500
	ControlSend,RichEdit20W1, {ctrl down}v{ctrl up} ,�ѴϻѴ� ��Ȳ��
	sleep 500
	ControlSend,,{enter},ahk_class #32770
	FormatTime, �ð�, a_now, tt hh��mm��ss��	
	sleep 1000
	ControlSend,RichEdit20W1,[%�ð�%] ���� �߻�{ctrl down}{enter}{ctrl up},�ѴϻѴ� ��Ȳ��
	sleep 500
	ControlSend,RichEdit20W1, �ݺ� %repeatcount%ȸ / ģ�� %friendcount1%��{ctrl down}{enter}{ctrl up},�ѴϻѴ� ��Ȳ��
	sleep 1000
	ControlSend,RichEdit20W1,���� ���� �մϴ�.{enter}{enter},�ѴϻѴ� ��Ȳ��
	FileAppend, [%A_MM%��%A_DD%�� %A_Hour%:%A_Min%:%A_Sec%] - [ �����߻� - �ݺ�(%repeatcount%) / ģ��(%friendcount1%) ]||`n,log\punipuni%A_MM%%A_DD%.log
*/
}



pclick(x,y) {
	 WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
	 rx:=x-7
	 ry:=y-47
	 mp:= rx|ry <<16
	 PostMessage, 0x200, 0, %mp%,%CCNN%,%title%
	 PostMessage, 0x201, 1, %mp%,%CCNN%,%title%
	 PostMessage, 0x202, 0, %mp%,%CCNN%,%title%
}


pdrag(x1,y1,x2,y2) {
	 WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
	 rx1:=x1-7
	 ry1:=y1-47
	 rx2:=x2-7
	 ry2:=y2-47
	 mp1:= rx1|ry1<<16
	 mp2:= rx2|ry2<<16
	 PostMessage, 0x200, 0, %mp1%,%CCNN%,%title%
	 PostMessage, 0x201, 1, %mp1%,%CCNN%,%title%	 
	 sleep 100
	 PostMessage, 0x200, 0, %mp2%,%CCNN%,%title%
	 PostMessage, 0x202, 0, %mp2%,%CCNN%,%title%
}




WM_LBDOWN() 
{ 
PostMessage, 0xA1, 2,,, A 
}




puni_recovery()
{
	Gui, Submit, Nohide
	settimer, �ʻ��üũ, off
	settimer, ����Ʈ�ʻ��üũ, off
	settimer, ��������üũ, off
	settimer, ��Ŭ, off
	loopcount=0
	allreset()
	run,taskkill -f -im bluestacks.exe ,,hide
	run,taskkill -f -im HD-Agent.exe ,,hide
	run,taskkill -f -im HD-LogRotatorSevice.exe ,,hide
	run,taskkill -f -im HD-Plus-Service.exe ,,hide
	run,taskkill -f -im adb.exe ,,hide
	sleep 1000
	run , lnk\bluestacks.lnk 
	sleep %recoverytime%
	run,"win.bat" ,,hide
	sleep 13500
	run,taskkill -f -im conhost.exe ,,hide
	run,taskkill -f -im adb.exe ,,hide
	sleep 700
	run , lnk\frep.lnk
	sleep 2000
	run , lnk\puni.lnk
	sleep 4000
	run , lnk\frep.lnk
	sleep 2000
	run , lnk\puni.lnk
	sleep 2000
	windowsetting(������)
	sleep 1000
	settimer, ��ſ���üũ,1000
	gosub ĳ��ȭ��
	sleep 1000
	gosub ĳ��������
	sleep 2000
	gosub ����Ȯ��
	sleep 2000
	settimer, ��ſ���üũ,off	
	gosub ��������ġã��1
}

�Ѵ������:
	Gui, Submit, Nohide
	settimer, �ʻ��üũ, off
	settimer, ����Ʈ�ʻ��üũ, off
	settimer, ��������üũ, off
	settimer, ��Ŭ, off
	loopcount=0
	allreset()
	run , lnk\frep.lnk
	sleep 2000
	run , lnk\Fast Task Killer.lnk
	sleep 3000
	run , lnk\puni.lnk
	sleep 2000
	windowsetting(������)
	sleep 1000
	settimer, ��ſ���üũ,1000
	gosub ĳ��ȭ��
	sleep 1000
	gosub ĳ��������
	sleep 2000
	gosub ����Ȯ��
	sleep 2000
	settimer, ��ſ���üũ,off	
	goto ��������ġã��1
	return
;C:\ProgramData\BlueStacks\Client\Bluestacks.exe -json "{""app_icon_url"": """", ""app_name"": ""FRep"", ""app_url"": """", ""app_pkg"": ""com.x0.strai.frep""}"
;C:\ProgramData\BlueStacks\Client\Bluestacks.exe -json "{""app_icon_url"": """", ""app_name"": ""�ѴϻѴ�"", ""app_url"": """", ""app_pkg"": ""com.Level5.YWP""}"

Button��������:
Gui, submit, nohide
IniWrite,%�ݺ�x%,PUNIPUNI.INI, ����,��ġx
IniWrite,%�ݺ�y%,PUNIPUNI.INI, ����,��ġy
IniWrite,%ù��°%, PUNIPUNI.INI, ����, ù��°
IniWrite,%�ι�°%, PUNIPUNI.INI, ����, �ι�°
IniWrite,%����°%, PUNIPUNI.INI, ����, ����°
IniWrite,%ù���ð�%, PUNIPUNI.INI, ����, ù���ð�
IniWrite,%�ι��ð�%, PUNIPUNI.INI, ����, �ι��ð�
IniWrite,%�����ð�%, PUNIPUNI.INI, ����, �����ð�
IniWrite,%�ǹ�üũ%, PUNIPUNI.INI, ����, �ǹ�üũ
IniWrite,%ùĳ%, PUNIPUNI.INI, ����, ùĳ
IniWrite,%�丮%, PUNIPUNI.INI, ����, �丮
IniWrite,%���%, PUNIPUNI.INI, ����, ���
IniWrite,%����%, PUNIPUNI.INI, ����, ����
IniWrite,%�ʸ��%, PUNIPUNI.INI, ����, �ʸ��
IniWrite,%�ʻ��1%, PUNIPUNI.INI, ����, �ʻ��1
IniWrite,%�ʻ��2%, PUNIPUNI.INI, ����, �ʻ��2
IniWrite,%�ʻ��3%, PUNIPUNI.INI, ����, �ʻ��3
IniWrite,%�ʻ��4%, PUNIPUNI.INI, ����, �ʻ��4
IniWrite,%�ʻ��5%, PUNIPUNI.INI, ����, �ʻ��5
IniWrite,%������%, PUNIPUNI.INI, ����, ������
IniWrite,%�ݺ����%, PUNIPUNI.INI, ����, �ݺ����
IniWrite,%��üũ%, PUNIPUNI.INI, ����, ��üũ
IniWrite,%����Ƚ��%, PUNIPUNI.INI, ����, ����Ƚ��
IniWrite,%��1%, PUNIPUNI.INI, ����, ��1
IniWrite,%��2%, PUNIPUNI.INI, ����, ��2
IniWrite,%��3%, PUNIPUNI.INI, ����, ��3
IniWrite,%��4%, PUNIPUNI.INI, ����, ��4
IniWrite,%��5%, PUNIPUNI.INI, ����, ��5
IniWrite,%�ʰ���1%, PUNIPUNI.INI, ����, �ʰ���1
IniWrite,%�ʰ���2%, PUNIPUNI.INI, ����, �ʰ���2
IniWrite,%�ʰ���3%, PUNIPUNI.INI, ����, �ʰ���3
IniWrite,%�ʰ���4%, PUNIPUNI.INI, ����, �ʰ���4
IniWrite,%�ʻ������%, PUNIPUNI.INI, ����, �ʻ������
RETURN

buttonX:
gosub Button��������
ExitApp