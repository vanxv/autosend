[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=8824ebf2-48b5-4d5b-8aaa-ebb56354b8c0
Description=QQ加人
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Attachment]
UEsDBBQAAgAIAGhQikqc/HXpgQEAAHYFAAAHABEAMTIzLmJtcFVUDQAHWFjrWFhY61hYWOtYc/ItY2UAAzMg1gBifiCWAWJGBgmwuANUHhn8JwUMQvWKiq/k5V+pqr4yMXlDjHoBgRdwNNLUa2u/BoaViMgLUdGXSkqvDAxe29u/DQt7X139ad68bwcP/kRTTxANA/Xs7OmsrN4sLGbMzMqMjMKMjMBMA8wmrEAGkMvMrAKUYmX1YWfP4ORsZ6AEcPEx6dgzuyazBJYAEbNLEpOWLQMnL5oqRh4hFt88trYDHKu/caz9iY5WfWVr2cvslcXAxQ9Rz7H0HRZlmGjxa5bYNpB6YhRD0JofQPUsvvmsxUvZJ5zHbtHSd+x9Z1mLlrB45zCKK6J7mYObUViGUUwBhISlGdi5sAYMJydnT0/Pjh07vL29kcUDAgJ2797d0dHBxsaGLD5p0iRI8v79+7eOjg5E0NTU9M+fPxDx3t5euGJubu6fP38CBWNiYuLj4+FSM2fOBGqHqP/69SsHBwdE3MjICCjy4cMHCHft2rUQxsaNG52cnIBWZ2Vl3b9/X1NTEyIOAFBLAQIXCxQAAgAIAGhQikqc/HXpgQEAAHYFAAAHAAkAAAAAAAAAIACAgQAAAAAxMjMuYm1wVVQFAAdYWOtYUEsFBgAAAAABAAEAPgAAALcBAAAAAA==


[Script]
Delay 3000
//运行QQ
FindPic 0,0,2024,1768,"Attachment:\123.bmp",0.9,intX,intY
If intX > 0 And intY > 0 Then
End If
MoveTo intX, intY
Delay 300
LeftClick 2
Delay 1000
MoveTo 965, 580
LeftClick 1
Delay 1000
KeyPress "BackSpace", 1
Delay 1000
//输入账号 
qq = Plugin.File.ReadFileEx("F:\login.txt")
SayString qq
Delay 1500
MoveTo 980, 600
Delay 200
LeftClick 3
Delay 1500
//输入密码
KeyPress "w", 1
Delay 100
KeyPress "e", 1
Delay 100
KeyPress "1", 1
Delay 100
KeyPress "2", 1
Delay 100
KeyPress "3", 1
Delay 100
KeyPress "4", 1
Delay 100
KeyPress "5", 1
Delay 100
KeyPress "6", 1
Delay 1000
KeyPress "Enter", 1
//以上登陆成功





//接下来进行添加人 点击加号 点击找人
Delay 2000
MoveTo 1500, 850
LeftClick 1
Delay 2000
MoveTo 740, 260
LeftClick 2
Delay 2000


//接下来输入qq号
Text = Plugin.File.ReadFileEx("F:\qqnum.txt")
dim MyArray
MyArray = Split(Text, "|")
If UBound(MyArray)>=0 Then
    i=0
    For UBound(MyArray)
    	MoveTo 966,320
    	LeftClick 2
    	Delay 500
    	LeftClick 1
		x = MyArray(i)
		SayString x
		Delay 1000
		KeyPress "Enter", 1
		//已经点击查找
		Delay 2000
		MoveTo 630, 530//点击加人
		LeftClick 2
		Delay 1000
		MoveTo 1066, 680//点击下一步
		LeftClick 3
		Delay 500
		MoveTo 1140, 680//点击完成
		
		i=i+1
        
    Next
End If
Delay 20000
RunApp "C:\Users\ZDNF\Desktop\1.py"