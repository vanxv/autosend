#!python3
# -*- coding: utf-8 -*-
import time
import uiautomation as automation

def GetPersonDetail():
    detailWindow = automation.WindowControl(searchDepth= 1, ClassName = 'TXGuiFoundation', SubName = '的资料')
    detailPane = detailWindow.PaneControl(Name = '资料')
    details = ''
    for control, depth in automation.WalkTree(detailPane, lambda c: c.GetChildren()):
        if control.ControlType == automation.ControlType.TextControl:
            details += control.Name
        elif control.ControlType == automation.ControlType.EditControl:
            details += control.CurrentValue() + '\n'
    details += '\n' * 2
    detailWindow.Click(0.95, 0.02)
    return details

def main():
    automation.Logger.WriteLine('请把鼠标放在QQ群聊天窗口中的一个成员上面，3秒后获取\n')
    time.sleep(3)
    listItem = automation.ControlFromCursor()
    if listItem.ControlType != automation.ControlType.ListItemControl:
        automation.Logger.WriteLine('没有放在群成员上面，程序退出！')
        return
    consoleWindow = automation.GetConsoleWindow()
    consoleWindow.SetActive()
    qqWindow = listItem.GetTopWindow()
    list = listItem.GetParentControl()
    allListItems = list.GetChildren()
    f=open(r'f:\resqq.txt','a')
    for listItem in allListItems:
        automation.Logger.WriteLine(listItem.Name)
        f.write(listItem.Name)
    f.close()
        

if __name__ == '__main__':
    main()
    input('press Enter to exit')
