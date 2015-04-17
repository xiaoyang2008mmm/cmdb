#!/usr/bin/python
# encoding: utf-8
import MySQLdb
def results():
    try:
       db = MySQLdb.connect("192.168.1.105","d","d","cmdb")
       cursor = db.cursor()
       sql = "SELECT * FROM server"
       cursor.execute(sql)
       results = cursor.fetchall()
       db.close()
       return results
    except:
       print "Error: unable to fecth data"
    


def ip_search(search):
   global title
   db = MySQLdb.connect("192.168.1.105","d","d","cmdb")
   cursor = db.cursor()
   if  search : 
   	sql="select * from server   where id=(select id from server where ip=\"%s\" order by  id  desc limit 1)" %search
	if  cursor.execute(sql)==0 :
	    sql="select * from server  order by  id  desc limit 1"	
	    title="结果不存在，返回最后一行记录"
	else:
	    title="%s"%(search)
   else:
   	sql="select * from server order by  id  desc limit 1" 
	title="输入为空，返回最后一行记录"
   cursor.execute(sql)
   all = cursor.fetchall()
   db.close()
   return all

