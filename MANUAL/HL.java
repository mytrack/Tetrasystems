<<HIGH_LEVEL




THREAD CLASS 

python thread class
--------------------------------------------------------
Thread 객체를 상속해서 run 메소드 재정의

class MyExample(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
        self.__suspend = False
        self.__exit = False
 
    def run(self):
        while True:
            ### Suspend ###
            while self.__suspend:
                time.sleep(0.5)
                 
            ### Process ###
            print 'Thread process !!!'
 
            ### Exit ###
            if self.__exit:
                break
             
    def mySuspend(self):
        self.__suspend = True
         
    def myResume(self):
        self.__suspend = False
         
    def myExit(self):
        self.__exit = True
--------------------------------------------------------



a= {1:'a'} = {Key:'Value'}






sudo apt-get install apache2
sudo apt-get install mysql-server mysql-client
sudo apt-get install php5 php5-common libapache2-mod-php5



http://withcoding.com/58

sudo apt-cache search tomcat
sudo apt-get install tomcat7
sudo find / -name javac
sudo vi /etc/default/tomcat7
sudo service tomcat7 start

ps -ef | grep tomcat7
sudo service tomcat7 stop
suto service tomcat7 start
sudo find / -name tomcat7
cd /var/lib/tomcat7/webapps/ROOT/
sudo apt-cache search jdk
sudo apt-get install openjdk-7-jdk
javac -version
sudo find / -name javac
sudo vi /etc/default/tomcat7
sudo service tomcat7 restart







HIGH_LEVEL




