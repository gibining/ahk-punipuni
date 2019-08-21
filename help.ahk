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


global 필살기게이지1x:=74
global 필살기게이지1y:=281
global 필살기컬러11=0x2A78CE
global 필살기컬러12=0xCE225F

global 필살기게이지2x:=157
global 필살기게이지2y:=257
global 필살기컬러21=0x226ECD
global 필살기컬러22=0xCE225F

global 필살기게이지3x:=243
global 필살기게이지3y:=246
global 필살기컬러31=0x6399DB
global 필살기컬러32=0xCE225F

global 필살기게이지4x:=286
global 필살기게이지4y:=254
global 필살기컬러41=0x2271CF
global 필살기컬러42=0xCE225F

global 필살기게이지5x:=424
global 필살기게이지5y:=280
global 필살기컬러51=0x2274CC
global 필살기컬러52=0xCE225F


;피버게이지 25% 50% 75%
global 피버게이지1_25x:=156
global 피버게이지1_25y:=818
global 피버게이지1_50x:=230
global 피버게이지1_50y:=827
global 피버게이지1_75x:=308
global 피버게이지1_75y:=815


;필살기 사용 포인트
global 요괴2x:=53
global 요괴2y:=322
global 요괴3x:=136
global 요괴3y:=296
global 요괴4x:=226
global 요괴4y:=290
global 요괴5x:=311
global 요괴5y:=295
global 요괴6x:=404
global 요괴6y:=321


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
global 히든모드
global 팀체크
global 오차범위:=5

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
	IniRead , helper_name, PUNIPUNI.INI, 기본설정, helper_name
	IniRead , title, PUNIPUNI.INI, 기본설정, title
	IniRead , helperx, PUNIPUNI.INI, 기본설정, helperx
	IniRead , helpery, PUNIPUNI.INI, 기본설정, helpery
	IniRead , recoverytime, PUNIPUNI.INI, 기본설정, recoverytime
	IniRead , gametime, PUNIPUNI.INI, 기본설정, gametime
	IniRead , 반복x, PUNIPUNI.INI, 설정, 위치x
	IniRead , 반복y, PUNIPUNI.INI, 설정, 위치y
	IniRead , 첫번째, PUNIPUNI.INI, 설정, 첫번째
	IniRead , 두번째, PUNIPUNI.INI, 설정, 두번째
	IniRead , 세번째, PUNIPUNI.INI, 설정, 세번째
	IniRead , 첫번시간, PUNIPUNI.INI, 설정, 첫번시간
	IniRead , 두번시간, PUNIPUNI.INI, 설정, 두번시간
	IniRead , 세번시간, PUNIPUNI.INI, 설정, 세번시간
	IniRead , 피버체크, PUNIPUNI.INI, 설정, 피버체크
	IniRead , 첫캐, PUNIPUNI.INI, 설정, 첫캐	
	IniRead , 토리, PUNIPUNI.INI, 설정, 토리
	IniRead , 비니, PUNIPUNI.INI, 설정, 비니
	IniRead , 찬혁, PUNIPUNI.INI, 설정, 찬혁
	IniRead , 필모드, PUNIPUNI.INI, 설정, 필모드
	IniRead , 필살기1, PUNIPUNI.INI, 설정, 필살기1
	IniRead , 필살기2, PUNIPUNI.INI, 설정, 필살기2
	IniRead , 필살기3, PUNIPUNI.INI, 설정, 필살기3
	IniRead , 필살기4, PUNIPUNI.INI, 설정, 필살기4
	IniRead , 필살기5, PUNIPUNI.INI, 설정, 필살기5
	IniRead , 팀체크, PUNIPUNI.INI, 설정, 팀체크
	IniRead , 반복모드, PUNIPUNI.INI, 설정, 반복모드
	IniRead, 히든모드, PUNIPUNI.INI, 설정, 히든모드
	IniRead, 리스횟수, PUNIPUNI.INI, 설정, 리스횟수
	IniRead, 필1, PUNIPUNI.INI, 설정, 필1
	IniRead, 필2, PUNIPUNI.INI, 설정, 필2
	IniRead, 필3, PUNIPUNI.INI, 설정, 필3
	IniRead, 필4, PUNIPUNI.INI, 설정, 필4
	IniRead, 필5, PUNIPUNI.INI, 설정, 필5
	IniRead, 필간격1, PUNIPUNI.INI, 설정, 필간격1
	IniRead, 필간격2, PUNIPUNI.INI, 설정, 필간격2
	IniRead, 필간격3, PUNIPUNI.INI, 설정, 필간격3
	IniRead, 필간격4, PUNIPUNI.INI, 설정, 필간격4
	IniRead, 필살기이후, PUNIPUNI.INI, 설정, 필살기이후
}

Gui, font, s9 , 맑은 고딕
Gui, Color , 0xfafafa
Gui, Add, GroupBox , x8 y13 w224 h234, 필살기
Gui, Add, Groupbox, x58 y24 w34 h41
Gui, Add, Groupbox, x91 y24 w34 h41
Gui, Add, Groupbox, x124 y24 w34 h41
Gui, Add, Groupbox, x157 y24 w34 h41
Gui, Add, Groupbox, x190 y24 w34 h41
Gui, Add, Picture, x68 y38 v스킬1, img\skill0.png
Gui, Add, Picture, x101 y38 v스킬2, img\skill0.png
Gui, Add, Picture, x134 y38 v스킬3, img\skill0.png
Gui, Add, Picture, x167 y38 v스킬4, img\skill0.png
Gui, Add, Picture, x199 y38 v스킬5, img\skill0.png
Gui, Add, Text, x11 y65, 사용안함
Gui, Add, Text, x11 y80, 일반이상
Gui, Add, Text, x11 y95, G필살기

if(필살기1=1)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x68 y65 group v필살기1 %chk%

if(필살기1=2)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x68 y80 %chk%

if(필살기1=3)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x68 y95 %chk%

if(필살기2=1)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x101 y65 group v필살기2 %chk%

if(필살기2=2)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x101 y80 %chk%

if(필살기2=3)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x101 y95 %chk%

if(필살기3=1)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x134 y65 group v필살기3 %chk%

if(필살기3=2)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x134 y80 %chk%

if(필살기3=3)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x134 y95 %chk%

if(필살기4=1)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x167 y65 group v필살기4 %chk%

if(필살기4=2)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x167 y80 %chk%

if(필살기4=3)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x167 y95 %chk%

if(필살기5=1)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x199 y65 group v필살기5 %chk%

if(필살기5=2)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x199 y80 %chk%

if(필살기5=3)
{
	chk=Checked
}
else
{
	chk=
}

Gui, Add, radio, x199 y95 %chk%
Gui, Add, text, x16 y130 , 필살기방법
Gui, Add, DDL, x15 y145 w60 AltSubmit v필모드, 모아서|바로
Gui, Add, DDL, x94 y120 w72 AltSubmit v필1, 사용안함|1번요괴|2번요괴|3번요괴|4번요괴|5번요괴
Gui, Add, DDL, x94 y145 w72 AltSubmit v필2, 사용안함|1번요괴|2번요괴|3번요괴|4번요괴|5번요괴
Gui, Add, DDL, x94 y170 w72 AltSubmit v필3, 사용안함|1번요괴|2번요괴|3번요괴|4번요괴|5번요괴
Gui, Add, DDL, x94 y195 w72 AltSubmit v필4, 사용안함|1번요괴|2번요괴|3번요괴|4번요괴|5번요괴
Gui, Add, DDL, x94 y220 w72 AltSubmit v필5, 사용안함|1번요괴|2번요괴|3번요괴|4번요괴|5번요괴

Gui, Add, edit, x168 y120 w59 h23 v필간격1 center,
Gui, Add, edit, x168 y145 w59 h23 v필간격2 center,
Gui, Add, edit, x168 y170 w59 h23 v필간격3 center,
Gui, Add, edit, x168 y195 w59 h23 v필간격4 center, 
Gui, Add, DDL, x168 y220 w59 AltSubmit v필살기이후, 왼쪽|오른쪽

Gui, Add, Groupbox, x8 y251 w224 h44
Gui, Add, Progress, c0X95E520 x22 y270 w196 h15 v피버게이지, 0
Gui, Add, checkbox, x22 y249 h20 v피버체크,피버체크
;Gui, Add, checkbox, x168 y201 h20 v히든모드,히든모드
Gui, Add, checkbox, x189 y301 h20 v음식,음식


Gui, Add, Tab, x-2 y298 w245 h130 , 설정||핀설정|복구|
Gui, Tab, 설정
Gui, Add, Groupbox, x8 y318 w224 h106 
gui,font,cred bold
Gui, Add, Text, x74 y329 , [F7]
gui,font,cdefault norm
Gui, Add, Text, x95 y330 ,로 위치 설정

Gui, Add, Text, x32 y351, X :         ,  Y :
Gui, Add, edit, x49 y349 w29 h18 v반복x center, 
Gui, Add, edit, x110 y349 w29 h18 v반복y center, 
Gui, Add, Button, x155 y348 w60 h20 , 설정저장


Gui, Add, Text, x48 y375, 반복모드 :
Gui, Add, DDL, x108 y371 w76 AltSubmit v반복모드, 머니벌이|맵진행|무도회|쟁탈전|게이트|광클|배틀로얄
Gui, Add, checkbox, x25 y399 h20 v팀체크,팀체크

Gui, Add, Text, x104 y401, 리셋 :
Gui, Add, DDL, x142 y397 w80 AltSubmit v리스횟수, 안함|20회마다|30회마다|40회마다|50회마다|60회마다|70회마다|80회마다|90회마다|100회마다
;Gui, Add, radio, x33 y287 v반복기준1 checked, 좌표기준
;Gui, Add, radio, x115 y287 v반복기준2 , 다음타겟 기준



;Gui, Tab, 음식
;Gui, Add, Groupbox, x8 y225 w224 h199

;Gui, Add, DDL, x87 y237 w50 AltSubmit v음식, 없음||1번|2번|3번
;Gui, Add, Text, x33 y270 ,레어요괴
;Gui, Add, DDL, x87 y267 w100 AltSubmit v레어요괴, 아님||발전신|착한맘할매|때리멍|어물어물|어렵괴|럭키스네이크

Gui, Tab, 핀설정
Gui, Add, Groupbox, x8 y318 w224 h106 ,
Gui, Add, Text, x17 y336 , 첫번째
Gui, Add, DDL, x57 y332 w50 AltSubmit v첫번째, 안함|1번|2번|3번
Gui, Add, Text, x125 y336 , 시간
Gui, Add, DDL, x150 y332 AltSubmit w50 v첫번시간, 안함|5초|6초|7초|8초|9초|10초|11초|12초
Gui, Add, Text, x200 y336 , 초

Gui, Add, Text, x17 y367 , 두번째
Gui, Add, DDL, x57 y363 AltSubmit w50 v두번째, 안함|1번|2번|3번
Gui, Add, Text, x125 y367 , 시간
Gui, Add, DDL, x150 y363 AltSubmit w50 v두번시간, 안함|5초|6초|7초|8초|9초|10초|11초|12초
Gui, Add, Text, x200 y367 , 초

Gui, Add, Text, x17 y398 , 세번째
Gui, Add, DDL, x57 y394 w50 AltSubmit v세번째, 안함|1번|2번|3번

Gui, Tab, 복구
Gui, add, text, x60 y332 ,복구시 선택할 캐릭터
Gui, Add, Groupbox, x8 y318 w224 h106 ,
Gui, Add, radio, x32 y398 v첫캐 ,
Gui, Add, radio, x85 y398 v비니 ,
Gui, Add, radio, x138 y398 v찬혁 ,
Gui, Add, radio, x191 y398 v토리 ,
Gui, add, picture, x18 y355 , img\1번.png
Gui, add, picture, x69 y355 , img\캐릭1-1.png
Gui, add, picture, x123 y355 , img\캐릭2-1.png
Gui, add, picture, x177 y355 , img\캐릭3-1.png


Gui, Tab

gui, add, picture, x10 y440  g자동뽑기, img\auto1.png
gui, add, text, x14 y500, 자동 뽑기
gui, add, picture, x90 y440  g자동룰렛, img\auto2.png
gui, add, text, x94 y500, 자동 룰렛
gui, add, picture, x170 y440 g불보내기 , img\auto3.png
gui, add, text, x174 y500, 불 보내기

gui, add, picture, x10 y520  g창위치설정, img\auto4.png
gui, add, text, x8 y580, 창 위치설정
gui, add, picture, x90 y520 g로그 , img\auto5.png
gui, add, text, x95 y580, 로그보기
gui, add, picture, x170 y520 g재부팅 , img\auto0.png
gui, add, text, x169 y580, 블택재시작

gui, add, picture, x10 y600  g불구매, img\auto6.png
gui, add, text, x18 y660, 불 구매
gui, add, picture, x90 y600  g뿌니재시작, img\auto6.png
gui, add, text, x90 y660, 뿌니재시작
gui, add, picture, x170 y600  g필살기사용, img\auto6.png
gui, add, text, x181 y660, 필살기

gui, add, picture, x10 y680 gfrep , img\auto10.png
gui, add, picture, x90 y680 gpuni , img\auto11.png
;gui, add, picture, x170 y680  g시작점, img\auto0.png
gui, add, picture, x170 y680  g완전종료확인, img\auto0.png


gui, add, text, x157 y763, [F8]로 발사
Gui, Add, DDL, x30 y760 AltSubmit w59 v방향, 왼쪽||오른쪽|
Gui, Add, DDL, x93 y760 AltSubmit w59 v각도, 직선||대각선|1쿠션|2쿠션|3쿠션-1|3쿠션-2|3쿠션-3

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
Gui, Add, Text, x10 y795 w150 vwim , 중지
Gui, Add, Text, x12 y811 w80 vcoun , 0/0

Gui, Add, Text, x132 y795 w100 vstats  right, 반복횟수(0)
gui, font, cdefault

Gui, Add, Button, x20 y845 w90 h30 , 시작(F6)
Gui, Add, Button, x129 y845 w90 h30 , 중지(F5)
Gui, Add, Button, x222 y1 w17 h17  , X

gui, 2:add,listbox, x-1 y-1 w352 r19 vLogtext

;Gui, Add, GroupBox , x0 y-7 w241 h896 

Gui, Show, w240 h886,%helper_name%



if(fileexist("PUNIPUNI.INI")){
	guicontrol,Choose,첫번째,%첫번째%
	guicontrol,Choose,두번째,%두번째%
	guicontrol,Choose,세번째,%세번째%
	guicontrol,Choose,첫번시간,%첫번시간%
	guicontrol,Choose,두번시간,%두번시간%
	guicontrol,Choose,세번시간,%세번시간%
	guicontrol,Choose,필모드,%필모드%
	guicontrol,,반복x,%반복x%
	guicontrol,,반복y,%반복y%
	guicontrol,,피버체크,%피버체크%
	guicontrol,,히든모드,%히든모드%
	guicontrol,,첫캐,%첫캐%
	guicontrol,,토리,%토리%
	guicontrol,,비니,%비니%
	guicontrol,,찬혁,%찬혁%
	guicontrol,Choose,반복모드,%반복모드%
	guicontrol,,팀체크,%팀체크%
	guicontrol,Choose,리스횟수,%리스횟수%
	guicontrol,Choose,필1,%필1%
	guicontrol,Choose,필2,%필2%
	guicontrol,Choose,필3,%필3%
	guicontrol,Choose,필4,%필4%
	guicontrol,Choose,필5,%필5%
	guicontrol,,필간격1,%필간격1%
	guicontrol,,필간격2,%필간격2%
	guicontrol,,필간격3,%필간격3%
	guicontrol,,필간격4,%필간격4%
	guicontrol,Choose,필살기이후,%필살기이후%	
}



;WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
;ControlGetFocus, CCNN ,%title%

windowsetting(히든모드)
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
x:=Win_X+Win_W
winmove  , %helper_name%, , x, Win_Y

WinActivate , %title%
ControlGetFocus, CCNN ,%title%
return

재부팅:
F10::
puni_recovery()
return

F9::

return

불구매:
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
;직선
if(각도=1)
{
	발사각:=0
}
;대각선
if(각도=2)
{
	발사각:=40
}
;1쿠션
if(각도=3)
{
	발사각:=125
}
;2쿠션
if(각도=4)
{
	발사각:=340
}
;3쿠션-1
if(각도=5)
{
	발사각:=500
}
;3쿠션-2
if(각도=6)
{
	발사각:=590
}
;3쿠션-3
if(각도=7)
{
	발사각:=625
}
if(방향=2)
{
	발사각:=발사각*-1
}
rx1:=Point_X-7-Win_X,
ry1:=Point_Y-47-Win_Y
rx2:=Point_X-7-발사각-Win_X,
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
settimer,광클,0
return

222:
settimer,광클,off
return

frep:
run , lnk\frep.lnk
return

puni:
run , lnk\puni.lnk
return

; 스코어업 요괴 

;홍거미 					0x6B7286
;에디슨					0xFBFE66
;꽃감						0x0A8A79


;공업 요괴

;도지라					0xD7F4FF
;각타 						0x725147
;도그샷코					0xFE001E
;고로						0x49B67F
;프리즌브레이크		0x40D5AB
;플도						0xD5E1E6
;베티						0x2766DC
;냥이2세					0xFBA7B2

;딜러

;절교가면 				0xE77DA0
;알리바바					0xFFE355
;괴도키드					0x3D88FE
;야마오카미				0x9EFE86




다지기:
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


; 0xFD5257  - 혀팔사


혀팔사:
F3::
Loop
{
	pclick(310,295)
	PixelSearch dx, dy, 12, 540, 447,805, 0xFD5257, 0, Fast RGB ;혀팔사
	if errorlevel=0Fast RGB
	{
		pclick(dx,dy)
	}
/*	
	PixelSearch dx, dy, 12, 540, 447,805, 0x273567, 2, Fast RGB ;보너스구슬
	if errorlevel=0
	{
		pclick(dx,dy)
	}
*/	
}
return


; 0x5E6AC4 - 8등신 위스퍼
; 0xACDD34- 장마 구미
단일딜:
F4::
Loop
{
	pclick(404,327)
	PixelSearch dx, dy, 12, 540, 447,805, 0xACDD34, 0, Fast RGB ;위스퍼
	if errorlevel=0
	{
		pclick(dx,dy)
	}
/*	
	PixelSearch dx, dy, 12, 540, 447,805, 0x273567, 2, Fast RGB ;보너스구슬
	if errorlevel=0
	{
		pclick(dx,dy)
	}
*/	
}
return

중지:
return

자동뽑기:
	imagesearch , Fx, Fy,  145+Win_X, 510+Win_Y, 242+Win_X, 630+Win_Y, *80 img\뽑기버튼2.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		sleep 700
		pclick(330,519)
		sleep 2000
		goto 돌리기대기
	}
	imagesearch , Fx, Fy,  145+Win_X, 510+Win_Y, 242+Win_X, 630+Win_Y, *80 img\뽑기버튼.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		sleep 700
		pclick(330,519)		
		sleep 2000
		goto 돌리기대기
	}
	else
	{
		goto 뽑기확인
	}
return	

돌리기대기:
	imagesearch , Fx, Fy,  178+Win_X, 723+Win_Y, 208+Win_X, 755+Win_Y, *130 img\돌려라.png
	if errorlevel=0
	{
		goto 돌리기
	}
	else
	{
		goto 자동뽑기
	}
return	

돌리기:
pdrag(100,510,440,100)

뽑기확인:
	imagesearch , Fx, Fy,  198+Win_X, 630+Win_Y, 260+Win_X, 714+Win_Y, *110 img\뽑기확인.png
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
		goto 자동뽑기
	}
	else
	{
		sleep 50
		goto 돌리기
	}
goto 자동뽑기
return

불보내기:
cnt:=0

불다시:
if(cnt>7)
{
	return
}
imagesearch , Fx, Fy,  326+Win_X, 200+Win_Y, 391+Win_X, 660+Win_Y, *150 img\도깨비불.png
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
	goto 불다시
}


불확인:
imagesearch , Fx, Fy,  198+Win_X, 497+Win_Y, 256+Win_X, 529+Win_Y, *30 img\불확인.png
if errorlevel=0
{
	pclick(Fx+10,Fy+10)
	sleep 1000
	goto 불다시
}
goto 불확인

return

자동룰렛:
settimer, 룰렛확인대기, 500

룰렛반복:

	imagesearch , Fx, Fy,  145+Win_X, 520+Win_Y, 242+Win_X, 630+Win_Y, *80 img\뽑기버튼.png
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
goto 룰렛반복
return	


룰렛확인대기:

	imagesearch , Fx, Fy,  150+Win_X, 400+Win_Y, 302+Win_X, 744+Win_Y, *110 img\룰렛확인.png
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






창위치설정:
windowsetting(히든모드)
return

로그:
FileRead,logsum,log\punipuni%A_MM%%A_DD%.log
GuiControl ,2:,Logtext, %logsum%
Gui, 2:Show, w350 h230, 로그
return


위치설정:
F7::
Gui, Submit, Nohide
MouseGetPos, Point_X, Point_Y,,CCNN, 1
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
sxpos:=Point_X-Win_X
sypos:=Point_Y-Win_Y
GuiControl,, 반복x, %sxpos%
GuiControl,, 반복y, %sypos%
return



9팀이동:
imagesearch , Fx, Fy,  330+Win_X, 473+Win_Y, 347+Win_X, 490+Win_Y, *50 img\9팀확인.png
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
	goto 9팀이동
}
return

10팀이동:
imagesearch , Fx, Fy,  362+Win_X, 473+Win_Y, 381+Win_X, 490+Win_Y, *50 img\10팀확인.png
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
	goto 10팀이동
}
return


팀설정:
imagesearch , Fx, Fy, 24+Win_X, 456+Win_Y, 114+Win_X, 481+Win_Y,*50 img\종족제한.png
if (errorlevel=0 and team=9)
{
	pclick(194,630)
	sleep 1000
	gosub 10팀이동
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
	gosub 9팀이동
	return
}
return

Button중지(F5):
F5::
;windowsetting(히든모드)
FileAppend, [%A_MM%월%A_DD%일 %A_Hour%:%A_Min%:%A_Sec%] - [ 중지  반복(%repeatcount%) / 친구(%friendcount1%) ]||`n, log\punipuni%A_MM%%A_DD%.log
Reload
return



Button시작(F6):
F6::
windowsetting(히든모드)
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
x:=Win_X+Win_W
if(히든모드=1)
{
	winmove  , %helper_name%, , 0, 0

}
else
{
	winmove  , %helper_name%, , x, Win_Y
}
FileAppend, [%A_MM%월%A_DD%일 %A_Hour%:%A_Min%:%A_Sec%] - [ 시작 ]||`n,log\punipuni%A_MM%%A_DD%.log


재시작:
settimer, 통신에러체크,1000
Gui, Submit, Nohide
loopcount=0
watchtype=1
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%

화살표찾기:
if(반복모드=2)
{
	GuiControl ,, coun, %loopcount%
	GuiControl ,, wim, 다음스테이지 찾는중
	imagesearch , Fx, Fy,  18+Win_X, 170+Win_Y, 450+Win_X, 700+Win_Y, *110 img\다음스테이지1.png
	if errorlevel=0
	{
		r반복x:=Fx+10+Win_X
		r반복y:=Fy+10+Win_Y
	}
	else
	{
		loopcount:=loopcount+1
		goto 화살표찾기
	}
}
else if(반복모드=1 or 반복모드=4 or 반복모드=6)
{
	WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
	r반복x:=반복x
	r반복y:=반복y
}
else if(반복모드=3)
{
	pdrag(228,680,228,600)
	sleep 500
	r반복x:=반복x
	r반복y:=반복y
}

배틀로얄입장:
if(반복모드=7)
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
	imagesearch , Fx, Fy,  57+Win_X, 700+Win_Y, 270+Win_X, 800+Win_Y,*80 img\뒤로4.png
	if errorlevel=0
	{
		sleep 500
		pclick(Fx+10,Fy+10)
		sleep 50
		pclick(Fx+15,Fy+15)
		sleep 50
		pclick(Fx+20,Fy+15)		
		sleep 400
		goto 스테이지선택후	
	}	
	imagesearch , Fx, Fy, 250+Win_X, 611+Win_Y, 410+Win_X, 800+Win_Y,*80 img\playbutton2.png
	if errorlevel=0
	{
	  goto 스테이지선택후	
	}
	else
	{
		goto 배틀로얄입장
	}
}





게이트찾기:
if(반복모드=5)
{
	GuiControl ,, coun, %loopcount%
	GuiControl ,, wim, 게이트 활성판별
	imagesearch , Fx, Fy,  309+Win_X, 650+Win_Y, 340+Win_X, 670+Win_Y, *80 img\게이트안.png
	if errorlevel=0
	{
		GuiControl ,, wim, 게이트 안
		sleep 1500
		goto 게이트스테이지찾기
	}	
	imagesearch , Fx, Fy,  356+Win_X, 554+Win_Y, 398+Win_X, 617+Win_Y, *80 img\no게이트.png
	if errorlevel=0
	{
		GuiControl ,, wim, 게이트 없음
		r반복x:=반복x
		r반복y:=반복y
		goto 마지막스테이지캡쳐
	}
	imagesearch , Fx, Fy,  364+Win_X, 580+Win_Y, 407+Win_X, 627+Win_Y, *80 img\게이트팝.png
	if errorlevel=0
	{
		GuiControl ,, wim, 게이트 생성됨
		pclick(Fx+10,Fy+10)
		sleep 1000
		pclick(233,515)
		sleep 8000
		goto 게이트찾기
	}
	else
	{
		loopcount:=loopcount+1
		sleep 100
		pclick(200,515)
		goto 게이트찾기
	}
}
else
{
	goto 마지막스테이지캡쳐
}


게이트스테이지찾기:	
	GuiControl ,, coun, %loopcount%
	GuiControl ,, wim, 다음 스테이지 찾는중

	imagesearch , Fx, Fy,  100+Win_X, 180+Win_Y, 340+Win_X, 400+Win_Y, *100 img\다음스테이지1.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		r반복x:=PointX+10
		r반복y:=PointY+10
		settimer,게이트수혈확인,off
		goto 마지막스테이지캡쳐
	}
	imagesearch , Fx, Fy,  100+Win_X, 180+Win_Y, 340+Win_X, 400+Win_Y, *100 img\다음스테이지2.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		r반복x:=PointX+10
		r반복y:=PointY+10
		settimer,게이트수혈확인,off
		goto 마지막스테이지캡쳐
	}
	imagesearch , Fx, Fy,  100+Win_X, 270+Win_Y, 340+Win_X, 600+Win_Y, *120 img\보스찾기.png
	PointX=%Fx%
	PointY=%Fy%	
	if errorlevel=0
	{
		imagesearch , Fx, Fy,  PointX-120+Win_X, PointY+Win_Y, PointX+50+Win_X, PointY+170+Win_Y, *100 img\파랑판.png
		Point1X=%Fx%
		Point1Y=%Fy%
		if errorlevel=0
		{
		pclick(PointX,PointY)
		r반복x:=Point1X+10
		r반복y:=Point1Y+10
		settimer,게이트수혈확인,off
		goto 마지막스테이지캡쳐
		}
	}		
	imagesearch , Fx, Fy,  100+Win_X, 180+Win_Y, 340+Win_X, 400+Win_Y, *100 img\초록판.png
	PointX=%Fx%
	PointY=%Fy%
	if errorlevel=0
	{
		tooltip,초록찾음
		imagesearch , Fx, Fy,  PointX-120+Win_X, PointY+Win_Y, PointX+50+Win_X, PointY+170+Win_Y, *100 img\파랑판.png
		PointX=%Fx%
		PointY=%Fy%
		if errorlevel=0
		{
			r반복x:=PointX+10
			r반복y:=PointY+10
			settimer,게이트수혈확인,off
			goto 마지막스테이지캡쳐
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
	goto 게이트스테이지찾기
return


마지막스테이지캡쳐:
cx1:=r반복x-18
cy1:=r반복y-18
cx2:=r반복x+18
cy2:=r반복y+18

Cpos=%cx1%,%cy1%,%cx2%,%cy2%
CaptureScreen(Cpos, 0, "img\마지막요괴.png")



스테이지선택:
sleep 100
pclick(r반복x,r반복y)
sleep 300
pclick(r반복x,r반복y)
sleep 300
pclick(r반복x,r반복y)
;goto 플레이버튼찾기


스테이지선택후:
repeatcount:= repeatcount + 1
GuiControl ,, stats,반복횟수(%repeatcount%)
;GuiControl ,, 친구횟수,친구(%friendcount1%)
loopcount:=0



프렙확인:
GuiControl ,, wim, 프렙확인
GuiControl ,, coun,%loopcount%/5
imagesearch , Fx, Fy, 408+Win_X, 794+Win_Y, 450+Win_X, 834+Win_Y,*80 img\프렙확인.png
if errorlevel=0
{
	loopcount:=0
}
else
{
	pclick(20,66)
	sleep 500
	imagesearch , Fx, Fy, 408+Win_X, 794+Win_Y, 450+Win_X, 834+Win_Y,*80 img\프렙확인.png
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
		imagesearch , Fx, Fy, 0+Win_X, 0+Win_Y, 450+Win_X, 800+Win_Y,*80 img\프렙확인.png
		if errorlevel=0
		{
			pdrag(fx,fy,450,850)
			goto 프렙확인
		}
		imagesearch , Fx, Fy, 38+Win_X, 610+Win_Y, 450+Win_X, 840+Win_Y,*80 img\프렙확인.png
		if errorlevel=0
		{
			pdrag(fx,fy,450,850)
			goto 프렙확인
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
		windowsetting(히든모드)
		loopcount:=loopcount+1
		goto 프렙확인
	}
}




플레이버튼찾기:
GuiControl ,, wim, 플레이버튼 대기
GuiControl ,, coun,%loopcount%/500
imagesearch , Fx, Fy,  187+Win_X, 766+Win_Y, 260+Win_X, 800+Win_Y,*80 img\입장.png
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
	goto 재시작
}

imagesearch , Fx, Fy,  74+Win_X, 710+Win_Y, 190+Win_X, 800+Win_Y,*80 img\뒤로1.png
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
	goto 재시작
}

imagesearch , Fx,Fy, 250+Win_X, 611+Win_Y, 410+Win_X, 800+Win_Y,*80 img\playbutton2.png
PX=%Fx%
PY=%Fy%
if errorlevel=0
{
	if(PY<700)
	{
		if(팀체크=1)
		{
			imagesearch , Fx,Fy, 213+Win_X, 626+Win_Y, 244+Win_X, 650+Win_Y,*50 img\9팀.png
			if errorlevel=0
			{
				team:=9
			}
			imagesearch , Fx,Fy, 213+Win_X, 626+Win_Y, 244+Win_X, 650+Win_Y,*50 img\10팀.png
			if errorlevel=0
			{
				team:=10
			}
			gosub 팀설정
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
		goto 플레이버튼찾기
	}
}

loopcount:=0
GuiControl ,, wim, 게임로딩중

sleep 5200

시작점:
GuiControl ,, coun, %loopcount%/500
GuiControl ,, wim, 게임시작 대기
imagesearch , Fx, Fy,  139+Win_X, 56+Win_Y, 163+Win_X, 83+Win_Y,*80 img\foodbutton.png
if errorlevel=0
{
	sleep 1000
	GuiControl ,, coun, 0/200
	GuiControl ,, wim, 게임 진행중
	
	if(음식=1)
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
	
	if(첫번째=2)
	{
	pclick(92,218)
	}
	else	if(첫번째=3){
		pclick(231,218)
	}
	else	if (첫번째=4){
		pclick(370,218)
	}
	sleep 20

		pclick(422,815) ;비비기 클릭
		if(필모드=1)
		{
			settimer, 필살기체크, 100
		}
		else
		{
			settimer, 게이트필살기체크, 100
		}
		


	
	if(첫번시간>1)
		gosub 두번째타겟
	
	if(두번시간>1)
		gosub 세번째타겟
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
		;tooltip, 음식버튼 대기, 280, 440
		loopcount:=loopcount+1
		goto 시작점
	}
}

;	sleep 10000
	loopcount:=0
	settimer, 전투종료체크, 500	

return

두번째타겟:
sl:=첫번시간+3
GuiControl ,, wim, 첫타겟%sl%초간 공격
sl:=sl*1000
sleep, sl

if(두번째=2)
{
	pclick(92,218)
	sleep 10
	pclick(92,218)
}
else 
{
	if(두번째=3)
	{
		pclick(231,218)
		sleep 10
		pclick(231,218)
	}
	else
	{
		if(두번째=4)
		{
			pclick(370,218)
			sleep 10		
			pclick(370,218)
		}
	}
}
sleep 10
pclick(422,815) ;비비기 클릭
return



세번째타겟:
sl:=두번시간+3
GuiControl ,, wim, 두번째타겟%sl%초간 공격
sl:=sl*1000
sleep, sl

if(세번째=2)
{
	pclick(92,218)
	sleep 10
	pclick(92,218)
}
else
{
	if(세번째=3)
	{
		pclick(231,218)
		sleep 10
		pclick(231,218)
	}
	else
	{
		if(세번째=4)
		{
			pclick(370,218)
			sleep 10
			pclick(370,218)
		}
	}
}
sleep 10
GuiControl ,, wim, 세번째타겟 공격
pclick(422,815) ;비비기 클릭
return


필살기사용:
GuiControl ,, wim, 필살기 사용중
if (필1>1)
{
	loop, 150
	{
		pclick(요괴%필1%x,요괴%필1%y)
		sleep 20
	}
	sleep, %필간격1%
}


if (필2>1)
{
	loop, 150
	{
		pclick(요괴%필2%x,요괴%필2%y)
		sleep 20
	}
	sleep, %필간격2%
}


if (필3>1)
{
	loop, 150
	{
		pclick(요괴%필3%x,요괴%필3%y)
		sleep 20
	}
	sleep, %필간격3%
}

if (필4>1)
{
	loop, 150
	{
		pclick(요괴%필4%x,요괴%필4%y)
		sleep 20
	}
	sleep, %필간격4%
}

if (필5>1)
{
	loop, 150
	{
		pclick(요괴%필5%x,요괴%필5%y)
		sleep 20
	}
}

if (필살기이후>1)
{
	pclick(424,815)
}
else
{
	pclick(26,815)
}
/* 옛날 프렙 필살기 
GuiControl ,, wim, 필살기 사용중
pclick(26,815)
sleep 100
pclick(26,815)
sleep 500
imagesearch , Fx, Fy, 408+Win_X, 794+Win_Y, 450+Win_X, 834+Win_Y,*80 img\프렙확인.png
if errorlevel=0
{
	pclick(26,815)
}
*/
	allreset()
	loopcount=0
	sleep 5000
	settimer, 필살기체크, 100
	return


전투종료체크:
imagesearch , Fx, Fy,  196+Win_X, 597+Win_Y, 261+Win_X, 718+Win_Y,*80 img\확인2.png
PointX=%Fx%
PointY=%Fy%
if errorlevel=0
	{
		allreset()
		settimer, 필살기체크, off
		settimer, 게이트필살기체크, off
		settimer, 전투종료체크, off
		settimer, 광클, off
		loopcount:=0
		sleep 100
		pclick(PointX,PointY)
		goto 전투종료대기
	}
imagesearch , Fx, Fy,  99+Win_X, 293+Win_Y, 176+Win_X, 323+Win_Y,*80 img\이어하기.png
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

전투종료대기:
GuiControl ,, coun, %loopcount%/1000
GuiControl ,, wim, 전투종료
imagesearch , Fx, Fy,  196+Win_X, 597+Win_Y, 261+Win_X, 718+Win_Y,*80 img\확인2.png
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
	GuiControl ,, wim, 경험치 창 확인대기
	goto 확인2
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
	;tooltip, 음식버튼 대기, 280, 440
	loopcount:=loopcount+1	
	goto 전투종료대기
	}
}
return


확인2:
GuiControl ,, coun, %loopcount%/1000
GuiControl ,, wim, 경험치 확인창
imagesearch , Fx, Fy,  196+Win_X, 597+Win_Y, 261+Win_X, 718+Win_Y,*80 img\확인2.png
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
	goto 완전종료확인
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
	goto 완전종료확인
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
	goto 확인2
	}
}
return


완전종료확인:
if(리스횟수>1)
{
	if(mod(repeatcount,리스횟수*10)=0)
	{
		goto 뿌니재시작
	}
}
GuiControl ,, coun, %loopcount%/500
GuiControl ,, wim, 완전종료확인
imagesearch , Fx, Fy,  252+Win_X, 789+Win_Y, 326+Win_X, 818+Win_Y,*5 img\letterbox.png
if errorlevel=0
{
	sleep 1000
	settimer, 통신에러체크,off
	goto 재시작
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
	imagesearch , Fx, Fy,  196+Win_X, 580+Win_Y, 374+Win_X, 718+Win_Y,*80 img\확인2.png
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
	imagesearch , Fx, Fy,  196+Win_X, 580+Win_Y, 374+Win_X, 718+Win_Y,*80 img\확인1.png
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
	imagesearch , Fx, Fy,  57+Win_X, 497+Win_Y, 270+Win_X, 800+Win_Y,*80 img\뒤로.png
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
	imagesearch , Fx, Fy,  57+Win_X, 497+Win_Y, 270+Win_X, 800+Win_Y,*80 img\뒤로1.png
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
	
	imagesearch , Fx, Fy,  57+Win_X, 497+Win_Y, 270+Win_X, 800+Win_Y,*80 img\뒤로2.png
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
	imagesearch , Fx, Fy,  187+Win_X, 766+Win_Y, 260+Win_X, 800+Win_Y,*120 img\입장.png
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
	imagesearch , Fx, Fy,  60+Win_X, 767+Win_Y, 113+Win_X, 800+Win_Y,*100 img\쟁탈마무리.png
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
	imagesearch , Fx, Fy,  83+Win_X, 498+Win_Y, 171+Win_X, 533+Win_Y,*50 img\아니오2.png
	if errorlevel=0
	{
		gosub 아니오판단
	}
	
	if(loopcount>499)
	{
		kakaosend()
		puni_recovery()
		return
	}
}
loopcount:=loopcount+1			
goto 완전종료확인
return

아니오판단:
imagesearch , Fx, Fy,  154+Win_X, 319+Win_Y, 239+Win_X, 357+Win_Y,*50 img\획득1.png
if errorlevel=0
{
	pclick(336,516) ;예
}
imagesearch , Fx, Fy,  100+Win_X, 323+Win_Y, 177+Win_X, 355+Win_Y,*50 img\획득2.png
if errorlevel=0
{
	pclick(126,518)	;아니오
}
imagesearch , Fx, Fy,  133+Win_X, 323+Win_Y, 203+Win_X, 355+Win_Y,*50 img\무도회.png
if errorlevel=0
{
	pclick(126,518)	;아니오
}
return


광클:
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

필살기체크:

WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
if 필살기1=1
	skill1stats=1
if 필살기2=1
	skill2stats=1
if 필살기3=1
	skill3stats=1
if 필살기4=1
	skill4stats=1
if 필살기5=1
	skill5stats=1
if 피버체크=0
	feverstats=1

if(필살기1=2 and skill1stats=0)
{
	체크x:=필살기게이지1x+Win_X
	체크y:=필살기게이지1y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러11%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, 스킬1,img\skill1.png
		  skill1stats:=1
	}
}
if(필살기1>1 and skill1stats<2)
{
	체크x:=필살기게이지1x+Win_X
	체크y:=필살기게이지1y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러12%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, 스킬1,img\skill2.png
		  skill1stats:=2
	}
}
if(필살기2=2 and skill2stats=0){
	체크x:=필살기게이지2x+Win_X
	체크y:=필살기게이지2y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러21%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, 스킬2,img\skill1.png
		 skill2stats:=1
	}
}
if(필살기2>1 and skill2stats<2){
	체크x:=필살기게이지2x+Win_X
	체크y:=필살기게이지2y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러22%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, 스킬2,img\skill2.png
		 skill2stats:=2
	}
}
if(필살기3=2 and skill3stats=0){
	체크x:=필살기게이지3x+Win_X
	체크y:=필살기게이지3y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러31%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬3,img\skill1.png
		skill3stats:=1
	}
}

if(필살기3>1 and skill3stats<2){
	체크x:=필살기게이지3x+Win_X
	체크y:=필살기게이지3y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러32%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬3,img\skill2.png
		skill3stats=2
	}
}

if(필살기4=2 and skill4stats=0)
{
	체크x:=필살기게이지4x+Win_X
	체크y:=필살기게이지4y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러41%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬4,img\skill1.png
		skill4stats=1
	}
}

if(필살기4>1 and skill4stats<2){
	체크x:=필살기게이지4x+Win_X
	체크y:=필살기게이지4y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러42%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬4,img\skill2.png
		skill4stats=2
	}
}
if(필살기5=2 and skill5stats=0){
	체크x:=필살기게이지5x+Win_X
	체크y:=필살기게이지5y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러51%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬5,img\skill1.png
		skill5stats=1
	}
}
if(필살기5>1 and skill5stats<2){
	체크x:=필살기게이지5x+Win_X
	체크y:=필살기게이지5y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러52%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬5,img\skill2.png
		skill5stats=2
	}
}


; 피버 게이지 체크 ----------------------------------------------------------------------------------------------------

피버체크:
	if(feverstats=0)
	{
		체크x:=피버게이지1_25x+Win_X
		체크y:=피버게이지1_25y+Win_Y
		PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, 0X99EE7A, %오차범위%, Fast RGB
		if errorlevel=0
		{
			GuiControl ,, 피버게이지,25
			feverstats=25
		}
	}

	if(feverstats=25)
	{
		체크x:=피버게이지1_50x+Win_X
		체크y:=피버게이지1_50y+Win_Y
		PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, 0XA1F580, %오차범위%, Fast RGB
		if errorlevel=0
		{
			GuiControl ,, 피버게이지,50
			feverstats=50
		}
	}

	if(feverstats=50)
	{
		체크x:=피버게이지1_75x+Win_X
		체크y:=피버게이지1_75y+Win_Y
		PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, 0XA1EE78, %오차범위%, Fast RGB
		if errorlevel=0
		{
			GuiControl ,, 피버게이지,75
			feverstats=75
		}
	}

	if(feverstats=75)
	{
		체크x:=피버게이지1_25x+Win_X
		체크y:=피버게이지1_25y+Win_Y
		PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, 0XFFF9AD, %오차범위%, Fast RGB
		if errorlevel=0
		{
			GuiControl ,, 피버게이지,100
			feverstats=1
		}
	}


필살기조건:



if ( skill1stats>0 and skill2stats>0 and skill3stats>0 and skill4stats>0 and skill5stats>0 and feverstats=1)
{
	settimer, 필살기체크, off
	goto 필살기사용
}


return

게이트필살기체크:

WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
if(필살기1=2)
{
	체크x:=필살기게이지1x+Win_X
	체크y:=필살기게이지1y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러11%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬1,img\skill1.png
		loop, 20
		{
			pclick(요괴2x,요괴2y)
			sleep 10
		}
		GuiControl ,, 스킬1,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(필살기1>1)
{
	체크x:=필살기게이지1x+Win_X
	체크y:=필살기게이지1y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러12%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, 스킬1,img\skill2.png
		loop, 20
		{
			pclick(요괴2x,요괴2y)
			sleep 10
		}
		GuiControl ,, 스킬1,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(필살기2=2){
	체크x:=필살기게이지2x+Win_X
	체크y:=필살기게이지2y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러21%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, 스킬2,img\skill1.png
		loop, 20
		{
			pclick(요괴3x,요괴3y)
			sleep 10
		}
		GuiControl ,, 스킬2,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(필살기2>1 ){
	체크x:=필살기게이지2x+Win_X
	체크y:=필살기게이지2y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러22%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		 GuiControl ,, 스킬2,img\skill2.png
		loop, 20
		{
			pclick(요괴3x,요괴3y)
			sleep 10
		}
		GuiControl ,, 스킬2,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(필살기3=2){
	체크x:=필살기게이지3x+Win_X
	체크y:=필살기게이지3y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러31%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬3,img\skill1.png
		loop, 20
		{
			pclick(요괴4x,요괴4y)
			sleep 10
		}
		GuiControl ,, 스킬3,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}

if(필살기3>1){
	체크x:=필살기게이지3x+Win_X
	체크y:=필살기게이지3y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러32%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬3,img\skill2.png
		loop, 20
		{
			pclick(요괴4x,요괴4y)
			sleep 10
		}
		GuiControl ,, 스킬3,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}

if(필살기4=2)
{
	체크x:=필살기게이지4x+Win_X
	체크y:=필살기게이지4y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러41%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬4,img\skill1.png
		loop, 20
		{
			pclick(요괴5x,요괴5y)
			sleep 10
		}
		GuiControl ,, 스킬4,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}

if(필살기4>1){
	체크x:=필살기게이지4x+Win_X
	체크y:=필살기게이지4y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, 0xCE225F, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬4,img\skill2.png
		loop, 20
		{
			pclick(요괴5x,요괴5y)
			sleep 10
		}
		GuiControl ,, 스킬4,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(필살기5=2){
	체크x:=필살기게이지5x+Win_X
	체크y:=필살기게이지5y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, %필살기컬러51%, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬5,img\skill1.png
		loop, 20
		{
			pclick(요괴6x,요괴6y)
			sleep 10
		}
		GuiControl ,, 스킬5,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}
if(필살기5>1){
	체크x:=필살기게이지5x+Win_X
	체크y:=필살기게이지5y+Win_Y
	PixelSearch dx, dy, 체크x-1, 체크y-1, 체크x+1,체크y+1, 0xCE225F, %오차범위%, Fast RGB
	if errorlevel=0
	{
		GuiControl ,, 스킬5,img\skill2.png
		loop, 20
		{
			pclick(요괴6x,요괴6y)
			sleep 10
		}
		GuiControl ,, 스킬5,img\skill0.png
		pclick(424,815)
		loopcount=0
	}
}

return


캐릭화면:
WinGetPos , Win_X, Win_Y, Win_W, Win_H, %title%
ControlGetFocus, CCNN ,%title%
imagesearch , Fx, Fy,  195+Win_X, 150+Win_Y, 260+Win_X, 180+Win_Y,*30 img\로드.png
	if errorlevel=0
	{
		return
	}
pclick(210,80)
sleep 500
goto 캐릭화면

return



캐릭터접속:
if(첫캐=1)
{
	goto 접속시작
}

if(비니=1)
{
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\캐릭1-1.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto 접속시작
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\캐릭1-2.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto 접속시작
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\캐릭1-3.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto 접속시작
	}	
	pclick(210,80)
	sleep 500
	goto 캐릭터접속
}

if(찬혁=1)
{
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*50 img\캐릭2-1.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto 접속시작
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*50 img\캐릭2-2.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto 접속시작
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*50 img\캐릭2-3.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto 접속시작
	}		
	pclick(210,80)
	sleep 500
	goto 캐릭터접속
}

if(토리=1)
{
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\캐릭3-1.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto 접속시작
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\캐릭3-2.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto 접속시작
	}
	imagesearch , Fx, Fy,  57+Win_X, 258+Win_Y, 130+Win_X, 600+Win_Y,*30 img\캐릭3-3.png
	if errorlevel=0
	{
		pclick(Fx+10,Fy+10)
		goto 접속시작
	}	
	pclick(210,80)
	sleep 500
	goto 캐릭터접속
}

return


접속시작:
sleep 700
pclick(330,780)
return

공지확인:
sleep 1000
imagesearch , Fx, Fy,  60+Win_X, 767+Win_Y, 265+Win_X, 793+Win_Y,*100 img\뒤로1.png
	if errorlevel=0
	{
		pclick(237,690)
		sleep 1000
		pclick(230,780)
		sleep 1000
		
	}
imagesearch , Fx, Fy,  60+Win_X, 500+Win_Y, 262+Win_X, 600+Win_Y,*100 img\뒤로4.png
	if errorlevel=0
	{
		pclick(Fx,Fy)
		sleep 1000
	}
 imagesearch , Fx, Fy,  60+Win_X, 767+Win_Y, 114+Win_X, 800+Win_Y,*80 img\쟁탈마무리.png
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
goto 공지확인	
return

마지막위치찾기1:
if(반복모드=5)
{
	goto 게이트찾기
}

if(반복모드=3)
{
	sleep 2000
	pdrag(228,680,228,600)
	sleep 500
	r반복x:=반복x+Win_X
	r반복y:=반복y+Win_Y	
	pclick(r반복x,r반복y)
	sleep 2000
	FileAppend, [%A_MM%월%A_DD%일 %A_Hour%:%A_Min%:%A_Sec%] - [ 복구완료 ]||`n,log\punipuni%A_MM%%A_DD%.log	
	goto 스테이지선택후
}
if(반복모드=7)
{
	FileAppend, [%A_MM%월%A_DD%일 %A_Hour%:%A_Min%:%A_Sec%] - [ 복구완료 ]||`n,log\punipuni%A_MM%%A_DD%.log	
	goto 배틀로얄입장
}
if(반복모드=4 or 반복모드=6)
{
	sleep 2000
	r반복x:=반복x+Win_X
	r반복y:=반복y+Win_Y	
	pclick(r반복x,r반복y)
	sleep 2000
	FileAppend, [%A_MM%월%A_DD%일 %A_Hour%:%A_Min%:%A_Sec%] - [ 복구완료 ]||`n,log\punipuni%A_MM%%A_DD%.log
	goto 스테이지선택후
}

 imagesearch , Fx, Fy,  7+Win_X, 200+Win_Y, 450+Win_X, 650+Win_Y,*50 img\마지막요괴.png
 if errorlevel=0
{
	pclick(fx+15,fy+15)
	sleep 1000
	FormatTime, 시간, a_now, tt hh시mm분ss초
	;ControlSend,RichEdit20W1,복구완료 %시간%{enter}{enter},뿌니뿌니 상황실
	FileAppend, [%A_MM%월%A_DD%일 %A_Hour%:%A_Min%:%A_Sec%] - [ 복구완료 ]||`n,log\punipuni%A_MM%%A_DD%.log
	goto 스테이지선택후
}
else
{

	if(findnum < 70)
	{
		findnum:=findnum+1
		GuiControl ,, coun, %findnum%/70
		GuiControl ,, wim, 위치찾기
		goto 마지막위치찾기1
	}
	else if(findnum1 < 33)
	{
		pdrag(228,680,228,660)
		sleep 600
		findnum:=0
		findnum1:=findnum1+1
		goto 마지막위치찾기1
	}
	else if(findnum1 < 66)
	{
		pdrag(228,660,228,680)
		sleep 600
		findnum:=0
		findnum1:=findnum1+1
		goto 마지막위치찾기1
	}
	else
	{
		sleep 600
		findnum:=0
		findnum1:=0
		goto 마지막위치찾기1
	}
}
return




통신에러체크:
 imagesearch , Fx, Fy,  83+Win_X, 363+Win_Y, 204+Win_X, 412+Win_Y,*100 img\통신에러2.png
 if errorlevel=0
{
   settimer,광클,off
   imagesearch , Fx, Fy,  299+Win_X, 499+Win_Y, 362+Win_X, 530+Win_Y,*80 img\하이.png
   PointX=%Fx%
   PointY=%Fy%
   if errorlevel=0
   {
      sleep 500
      pclick(PointX+10,PointY+10)
   }
}
 imagesearch , Fx, Fy,  83+Win_X, 363+Win_Y, 204+Win_X, 412+Win_Y,*100 img\통신에러3.png
 if errorlevel=0
{
   settimer,광클,off
   imagesearch , Fx, Fy,  299+Win_X, 499+Win_Y, 362+Win_X, 530+Win_Y,*80 img\하이.png
   PointX=%Fx%
   PointY=%Fy%
   if errorlevel=0
   {
      sleep 500
      pclick(PointX+10,PointY+10)
   }
}
return

게이트수혈확인:

return


allreset() {
GuiControl ,, 스킬1,img\skill0.png
GuiControl ,, 스킬2,img\skill0.png
GuiControl ,, 스킬3,img\skill0.png
GuiControl ,, 스킬4,img\skill0.png
GuiControl ,, 스킬5,img\skill0.png
GuiControl ,, 피버게이지,0
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
	ControlSend,RichEdit20W1, {ctrl down}v{ctrl up} ,뿌니뿌니 상황실
	sleep 500
	ControlSend,,{enter},ahk_class #32770
	FormatTime, 시간, a_now, tt hh시mm분ss초	
	sleep 1000
	ControlSend,RichEdit20W1,[%시간%] 문제 발생{ctrl down}{enter}{ctrl up},뿌니뿌니 상황실
	sleep 500
	ControlSend,RichEdit20W1, 반복 %repeatcount%회 / 친구 %friendcount1%명{ctrl down}{enter}{ctrl up},뿌니뿌니 상황실
	sleep 1000
	ControlSend,RichEdit20W1,복구 시작 합니다.{enter}{enter},뿌니뿌니 상황실
	FileAppend, [%A_MM%월%A_DD%일 %A_Hour%:%A_Min%:%A_Sec%] - [ 문제발생 - 반복(%repeatcount%) / 친구(%friendcount1%) ]||`n,log\punipuni%A_MM%%A_DD%.log
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
	settimer, 필살기체크, off
	settimer, 게이트필살기체크, off
	settimer, 전투종료체크, off
	settimer, 광클, off
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
	windowsetting(히든모드)
	sleep 1000
	settimer, 통신에러체크,1000
	gosub 캐릭화면
	sleep 1000
	gosub 캐릭터접속
	sleep 2000
	gosub 공지확인
	sleep 2000
	settimer, 통신에러체크,off	
	gosub 마지막위치찾기1
}

뿌니재시작:
	Gui, Submit, Nohide
	settimer, 필살기체크, off
	settimer, 게이트필살기체크, off
	settimer, 전투종료체크, off
	settimer, 광클, off
	loopcount=0
	allreset()
	run , lnk\frep.lnk
	sleep 2000
	run , lnk\Fast Task Killer.lnk
	sleep 3000
	run , lnk\puni.lnk
	sleep 2000
	windowsetting(히든모드)
	sleep 1000
	settimer, 통신에러체크,1000
	gosub 캐릭화면
	sleep 1000
	gosub 캐릭터접속
	sleep 2000
	gosub 공지확인
	sleep 2000
	settimer, 통신에러체크,off	
	goto 마지막위치찾기1
	return
;C:\ProgramData\BlueStacks\Client\Bluestacks.exe -json "{""app_icon_url"": """", ""app_name"": ""FRep"", ""app_url"": """", ""app_pkg"": ""com.x0.strai.frep""}"
;C:\ProgramData\BlueStacks\Client\Bluestacks.exe -json "{""app_icon_url"": """", ""app_name"": ""뿌니뿌니"", ""app_url"": """", ""app_pkg"": ""com.Level5.YWP""}"

Button설정저장:
Gui, submit, nohide
IniWrite,%반복x%,PUNIPUNI.INI, 설정,위치x
IniWrite,%반복y%,PUNIPUNI.INI, 설정,위치y
IniWrite,%첫번째%, PUNIPUNI.INI, 설정, 첫번째
IniWrite,%두번째%, PUNIPUNI.INI, 설정, 두번째
IniWrite,%세번째%, PUNIPUNI.INI, 설정, 세번째
IniWrite,%첫번시간%, PUNIPUNI.INI, 설정, 첫번시간
IniWrite,%두번시간%, PUNIPUNI.INI, 설정, 두번시간
IniWrite,%세번시간%, PUNIPUNI.INI, 설정, 세번시간
IniWrite,%피버체크%, PUNIPUNI.INI, 설정, 피버체크
IniWrite,%첫캐%, PUNIPUNI.INI, 설정, 첫캐
IniWrite,%토리%, PUNIPUNI.INI, 설정, 토리
IniWrite,%비니%, PUNIPUNI.INI, 설정, 비니
IniWrite,%찬혁%, PUNIPUNI.INI, 설정, 찬혁
IniWrite,%필모드%, PUNIPUNI.INI, 설정, 필모드
IniWrite,%필살기1%, PUNIPUNI.INI, 설정, 필살기1
IniWrite,%필살기2%, PUNIPUNI.INI, 설정, 필살기2
IniWrite,%필살기3%, PUNIPUNI.INI, 설정, 필살기3
IniWrite,%필살기4%, PUNIPUNI.INI, 설정, 필살기4
IniWrite,%필살기5%, PUNIPUNI.INI, 설정, 필살기5
IniWrite,%히든모드%, PUNIPUNI.INI, 설정, 히든모드
IniWrite,%반복모드%, PUNIPUNI.INI, 설정, 반복모드
IniWrite,%팀체크%, PUNIPUNI.INI, 설정, 팀체크
IniWrite,%리스횟수%, PUNIPUNI.INI, 설정, 리스횟수
IniWrite,%필1%, PUNIPUNI.INI, 설정, 필1
IniWrite,%필2%, PUNIPUNI.INI, 설정, 필2
IniWrite,%필3%, PUNIPUNI.INI, 설정, 필3
IniWrite,%필4%, PUNIPUNI.INI, 설정, 필4
IniWrite,%필5%, PUNIPUNI.INI, 설정, 필5
IniWrite,%필간격1%, PUNIPUNI.INI, 설정, 필간격1
IniWrite,%필간격2%, PUNIPUNI.INI, 설정, 필간격2
IniWrite,%필간격3%, PUNIPUNI.INI, 설정, 필간격3
IniWrite,%필간격4%, PUNIPUNI.INI, 설정, 필간격4
IniWrite,%필살기이후%, PUNIPUNI.INI, 설정, 필살기이후
RETURN

buttonX:
gosub Button설정저장
ExitApp