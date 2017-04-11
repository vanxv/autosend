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
MacroID=bbf2cb13-0fb2-4403-96a3-d003fab3a702
Description=加群
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
UEsDBBQAAgAIAGhQikqc/HXpgQEAAHYFAAAHABEAMTIzLmJtcFVUDQAHWFjrWFhY61hYWOtYc/ItY2UAAzMg1gBifiCWAWJGBgmwuANUHhn8JwUMQvWKiq/k5V+pqr4yMXlDjHoBgRdwNNLUa2u/BoaViMgLUdGXSkqvDAxe29u/DQt7X139ad68bwcP/kRTTxANA/Xs7OmsrN4sLGbMzMqMjMKMjMBMA8wmrEAGkMvMrAKUYmX1YWfP4ORsZ6AEcPEx6dgzuyazBJYAEbNLEpOWLQMnL5oqRh4hFt88trYDHKu/caz9iY5WfWVr2cvslcXAxQ9Rz7H0HRZlmGjxa5bYNpB6YhRD0JofQPUsvvmsxUvZJ5zHbtHSd+x9Z1mLlrB45zCKK6J7mYObUViGUUwBhISlGdi5sAYMJydnT0/Pjh07vL29kcUDAgJ2797d0dHBxsaGLD5p0iRI8v79+7eOjg5E0NTU9M+fPxDx3t5euGJubu6fP38CBWNiYuLj4+FSM2fOBGqHqP/69SsHBwdE3MjICCjy4cMHCHft2rUQxsaNG52cnIBWZ2Vl3b9/X1NTEyIOAFBLAwQUAAIACAB6XIpK0yygs08BAAB2CwAABQARAGwuYm1wVVQNAAcBbutYBG7rWAJu61jtVTFuwyAUTTdXXTv0CB0zdU3VvRfxAXIQjkDuYG7gG3j6ncziCSGxMKG++jcIWY6LSVspktFHAmLg/ffeJ2/vx4fd2F7Qn9H36I/od7uncf31+/e0fZzubyhIVn8dG55fxBN0HRabsYHk4dJd2E6t4gF/z1OEaSrMBh3K+MF2F4hkPcjKB0WNyMm9BxIrHC6WNaaurfqOeDEmUoAHGBwwjGcyNmNpgZZJMBVAAjymo4CjziwV4OF01iqVBqcTtHJaYSOAQb5ifoDHWRHJiVcYq3Lw+O6Q6hVhYAzzrPazFX2rZvlxNgSr8lmK/rmmvlgsTmRiCQ97/+TqnPJcqxe70WnsVulRHqt5VXbJUSziKjxgGOr3sv4SbqQajHnYqRFMXVopC8U1I/fZVGXvT3x2gNBbSl+2/+Rnkt3QUSSHBzkennXOlfxs/6c3gWeLT1BLAwQUAAIACADwXIpK2qkdCE8BAAB+CQAABgARADIzLmJtcFVUDQAH7G7rWOxu61jsbutY7VWxbcMwEHQ6uU2VEVKkTmsgVZosoiEyBEdgdhA30AaqPpXYqBIIsGH18EUfE4Qiy68AhhsTT4Ck9fzj3ZF++/jc76b2iv6M/oL+iP6we5rW339/L9v3174MstW1Y1bxb9wxSLCvebWNgckezu2PdGqdDOR7mSLGpsJs8KznASmRiWw92Cqxo8ZoztijejARxWyNaWyrviNZzOCVGFA3ou60j+AZA60cfxZyZFQHhrEjxlYnNpQYBPZWFcqQI7B30TskAgyk2cQDMMRgMgl52zE4DYbUHUotcmmMYQaVJ4PpW7fIQwzMwenZyH7Yei9ECAE8kzjBopecqblWGi3EUdEjw5XpCau623HOISLQRQxgD2r2tv4RZaIRzCTYozFCUenwlUuxIOXJJPr3IT8LQJUCla/NtXmYnWLoKJMgA40PF53wDx7u/5s3x3CTOAJQSwECFwsUAAIACABoUIpKnPx16YEBAAB2BQAABwAJAAAAAAAAACAAgIEAAAAAMTIzLmJtcFVUBQAHWFjrWFBLAQIXCxQAAgAIAHpcikrTLKCzTwEAAHYLAAAFAAkAAAAAAAAAIACAgbcBAABsLmJtcFVUBQAHAW7rWFBLAQIXCxQAAgAIAPBcikraqR0ITwEAAH4JAAAGAAkAAAAAAAAAIACAgToDAAAyMy5ibXBVVAUAB+xu61hQSwUGAAAAAAMAAwC3AAAAvgQAAAAA


[Script]

//删除文件内容 Call Lib.文件.删除指定行文本内容("F:\Log.txt", 1)
//向文件中写入内容Call Plugin.File.WriteFileEx("F:\Log.txt", "123")
Delay 3000
//运行QQ
FindPic 0,0,2024,1768,"Attachment:\123.bmp",0.9,intX,intY //找qq的图标 双击 
If intX > 0 And intY > 0 Then
End If
MoveTo intX, intY
Delay 300
LeftClick 2
Delay 1000
MoveTo 980, 580
LeftClick 1
Delay 1000
KeyPress "BackSpace", 1
Delay 1000
//输入账号
qq = Plugin.File.ReadFileEx("F:\login.txt")
SayString qq
Delay 1500
MoveTo 965, 580
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





//接下来进行添加群
Delay 2000
MoveTo 1500, 850//点击下边的加号
LeftClick 1
Delay 2000
MoveTo 830, 256//点击添加框最上边的加群
LeftClick 2
Delay 2000


//接下来输入群号
//下面这句是向目标文件("C:\Config.txt")读出文本内容到变量(Text)
Text = Plugin.File.ReadFileEx("F:\groupnum.txt")//读取qq群的内容
dim MyArray
MyArray = Split(Text, "|")
If UBound(MyArray)>=0 Then
    i=0
    For UBound(MyArray)
    	MoveTo 1100,325//这里是输入群号后会出现的那个X号，点击后清除当前账号
    	LeftClick 1
    	Delay 500
    	LeftClick 1
		x = MyArray(i)
		SayString x
		Delay 1000
		KeyPress "Enter", 1
		//已经点击查找
		Delay 2000
		MoveTo 777, 555//点击加群
		LeftClick 2
		Delay 1000
		MoveTo 1075, 680//点击下一步
		LeftClick 3
		Delay 500
		MoveTo 1140, 680//点击完成
		
		
		
		i=i+1
        
    Next
End If
RunApp "C:\Users\ZDNF\Desktop\1.py"

