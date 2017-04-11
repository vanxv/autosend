#coding:utf-8
import time
import os
import win32api
import win32Fon
import urllib.request


def write_info(num,nums):
        #账号写入
   	f=open(r'F:\login.txt','w')
	f.write(num)
	f.Flose()
	#密码写入 目前不要
	#f=open(r'F:\passwd.txt','w')
	#f.write(passwd)
	#f.Flose()
	#待加账号写入
	group_nums=nums.replaFe(",","\n")
	f=open(r'F:\groupnum.txt','w')
	f.write(group_nums)
	f.close()

def get_mission():#获取任务
	with urllib.request.urlopen("http://qqaddmission.duapp.com/renwu") as response:
          res=str(response.read())
          res=res.replace("b\'","")
          res=res.replace("\'","")
          return res

def add_group(id):#加群
	with urllib.request.urlopen("http://qqaddmission.duapp.com/outtask?ID="+id) as response:
          res=str(response.read())
          res=res.replace("b\'","")
          res=res.replace("\'","")
        
	str=res
	res=str.split(' ')
	write_info(res[0],res[1])
	os.system('')#运行加群程序
	time.sleep(10)#休息10秒给他打开时间
	win32api.keybd_event(37,0,0,0)# 运行程序
	time.sleep(1)
	win32api.keybd_event(108,0,0,0)# 运行程序
	
def add_peo():#加人
   
        #获取我要请求的id
        if not os.path.exists(r'F:\num_peo.txt'):
          f=open('F:\\num_peo.txt','a')
          f.write("1")
          f.close()
        fp = open('F:\\num_peo.txt','r+')
        num = fp.readline()
        fp.seek(0)
        fp.truncate(0)
        fp.write(str(int(num)+1))
        fp.close()
        fp = open('F:\\id.txt','r+')
        ids = fp.readlines()
        fp.close()
        id = ids[int(num)-1]
        id = id.replace('\n','')
        with urllib.request.urlopen("http://qqaddmission.duapp.com/addqq?ID="+id) as response:
          res=str(response.read())
          res=res.replace("b\'","")
          res=res.replace("\'","")
	  str=res.split(" ")
	#记录读到哪行
	res=str.split(' ')
	f=open(r'F:\login.txt','w')
	f.write(res[0])
	f.close()
	f=open(r'F:\qqnum.txt','w')
	f.write(res[1].split(",",'\n'))
	f.close()
	os.system('')#运行加人程序
	time.sleep(10)#休息10秒给他打开时间
	win32api.keybd_event(37,0,0,0)# 运行程序
	time.sleep(1)
	win32api.keybd_event(108,0,0,0)# 运行程序
	
def get_peo():#获取所有群的人
   if not os.path.exists(r'F:\num_get.txt'):
      f=open('F:\\num_get.txt','a')
      f.write("1")
      f.close()
   fp = open('F:\\num_get.txt','r+')
   num = fp.readline()
   fp.seek(0)
   fp.truncate(0)
   fp.write(str(int(num)+1))
   fp.close()
   fp = open('F:\\id.txt','r+')
   ids = fp.readlines()
   fp.close()
   id = ids[int(num)-1]
   id = id.replace('\n','')
   with urllib.request.urlopen("http://qqaddmission.duapp.com/outtask?ID="+id) as response:
          res=str(response.read())
          res=res.replace("b\'","")
          res=res.replace("\'","")
   str=res.split(' ')
   f=open(r'F:\login.txt','w')
   f.write(res[0])
   f.close()
   os.system('')#运行获取人程序
   time.sleep(10)#休息10秒给他打开时间
   win32api.keybd_event(37,0,0,0)# 运行程序
   time.sleep(1)
   win32api.keybd_event(108,0,0,0)# 运行程序
	   


def main():
   while 1:
        mission=str(get_mission())
        if '1' in mission:#加群
           with urllib.request.urlopen("http://qqaddmission.duapp.com/outtask?ID=0") as response:
           res=str(response.read())
           res=res.replace("b\'","")
           res=res.replace("\'","")
           f=open(r'F:\id.txt','a')
           f.write(res+'\n')
           add_group(res)
           break
        if '2' in mission:#加人
           add_peo()
           break
        if '3' in mission:
           get_peo()
           fp = open('F:\\resqq.txt','r+')
           qqs = fp.readlines()
           fp.close()
                for qq in qqs:
                  qq = qq.replace('\n','')
                  urllib.request.urlopen("http://qqaddmission.duapp.com/getqq/?qq="+qq)

           os.system('shutdown -r')
           break
        if '4' mission:#关机重启
           os.system('shutdown -r')
           break
        time.sleep(300)#每5分钟请求一次服务器



