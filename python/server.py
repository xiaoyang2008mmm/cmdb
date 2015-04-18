# -*- coding: utf-8 -*- 
import torndb
import tornado.httpserver
import tornado.ioloop
import tornado.web
import sys,os
import tornado.autoreload
import tornado.gen 
import time
import conn
import MySQLdb
from tornado.options import define, options, parse_command_line
reload(sys)
sys.setdefaultencoding('utf8')

define("port", default=80, help="run on the given port", type=int)
define("mysql_host", default="127.0.0.1:3306", help="cmdb database host")
define("mysql_database", default="cmdb", help="cmdb database name")
define("mysql_user", default="root", help="cmdb database user")
define("mysql_password", default="", help="cmdb database password")


class Application(tornado.web.Application):
    def __init__(self):
	settings = {                                                                                                        
        "static_path": os.path.join(os.path.dirname(__file__), "../static"),                                        
        "template_path" : os.path.join(os.path.dirname(__file__), "../template"),                                   
        "login_url": "/login/",                                                                                     
        "debug" : True,                                                                                             
        "cookie_secret": "61oETzKXQAGaYdkL5gEmGeJJFuYh7EQnp2XdTP1o/Vo=",                                            
	#"xsrf_cookies":True,                                                                                      
	}                                                                                                                   
                                                                                                                    
	handlers =[                                                                                 
    		(r"/", index),                                                                                                  
    		(r"/base/", base),                                                                                              
    		(r"/shezhi/",shezhi),                                                                                           
    		(r"/sear/", sear),                                                                                              
    		(r"/weixiu/",weixiu),                                                                                           
    		(r"/out/", loginout),                                                                                           
    		(r"/user/", user),                                                                                              
    		(r"/login/", login),                                                                                            
    		(r"/idc_manager/", idc_manager),                                                                                
    		(r"/setting/", setting),                                                                                        
    		(r"/mach_info/", mach_info),                                                                                    
    		(r"/useradd/", useradd),                                                                                    
        ]                                                                                                          

        tornado.web.Application.__init__(self, handlers, **settings)
	try:
            self.db = torndb.Connection(                                                                                
           	host=options.mysql_host, database=options.mysql_database,                                               
            	user=options.mysql_user, password=options.mysql_password,charset='utf8')
	except:
	    print  "数据库连接不上"
                                                                       


class BaseHandler(tornado.web.RequestHandler):
    @property
    def db(self):
        return self.application.db
    def get_current_user(self):
        return self.get_secure_cookie("user")

class index(BaseHandler):
    @tornado.web.authenticated
    def get(self):
        self.render("index.html")
class sear(BaseHandler):
    @tornado.web.authenticated
    def get(self):
        self.render("sear.html")
    def post(self):                                                                                                 
        search_comment   =self.get_argument("search")  
	s=conn.ip_search(search_comment)
        remind=conn.title
 	for all in s:
		all	
        self.render("sear.html",all=all,remind=remind)
class weixiu(BaseHandler):
    @tornado.web.authenticated
    def get(self):
        self.render("weixiu.html")
class mach_info(BaseHandler):
    @tornado.web.authenticated
    def get(self):
        self.render("mach_info.html",results=conn.results())
class idc_manager(BaseHandler):
    @tornado.web.authenticated
    def get(self):
	new=self.db.query("SELECT * FROM jifang")
        self.render("idc_manager.html",new=new)
class user(BaseHandler):
    @tornado.web.authenticated
    def get(self):
	users=self.db.query("SELECT * FROM user")
	print users
        self.render("user.html",users = users)
class setting(BaseHandler):
    @tornado.web.authenticated
    def get(self):
        self.render("setting.html")
class base(BaseHandler):
    @tornado.web.authenticated
    def get(self):
	self.render("base.html")

class loginout(BaseHandler):
    def get(self):
	self.set_secure_cookie("user"," ")
        self.clear_cookie("user")
        self.redirect('/login/', permanent=True)
class login(BaseHandler):
    def get(self):
        self.render("login.html")
    def post(self):
	name		=self.get_argument("name")
	passwd		=self.get_argument("passwd")
	if name=="admin":
		if passwd=="admin":
			self.set_secure_cookie("user", name)
			self.redirect('/base/', permanent=True)
			
		else:
			self.write("密码不对")
	else:
		self.write("用户名不对 ")


class shezhi(BaseHandler):
    def post(self):
	name  =self.get_argument("name")
	weizhi=self.get_argument("weizhi")
	tel   = self.get_argument("tel")
	kefu  = self.get_argument("kefu")
	jigui = self.get_argument("jigui")
	sql = "INSERT INTO jifang(name,weizhi, tel, kefu, jigui) VALUES ('%s','%s','%s','%s','%s')" %(name,weizhi,tel,kefu,jigui)
	self.db.execute(sql)


class useradd(BaseHandler):
    def post(self):
        user  =self.get_argument("user")
        passwd=self.get_argument("passwd")
        email  = self.get_argument("email")
        tel = self.get_argument("tel")
        sele = self.get_argument("sele")
	last_time=time.strftime('%Y-%m-%d %H:%M:%S',time.localtime(time.time()))
	sql = "INSERT INTO user(user,passwd,email, tel, sele,last_time) VALUES ('%s','%s','%s','%s','%s','%s')" %(user,passwd,email,tel,sele,last_time)
	print sql
        self.db.execute(sql)


def main():
    parse_command_line()
    http_server = tornado.httpserver.HTTPServer(Application())
    http_server.listen(options.port)
    tornado.ioloop.IOLoop.instance().start()


if __name__ == "__main__":
    main()
