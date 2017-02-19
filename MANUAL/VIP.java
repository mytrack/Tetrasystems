<<VERY_IMPORTANT



macos crontab)
crontab crontab_conf  #이렇게만 해도 충분히 올라간다
crontab -l 로 확인
crontab -e 로 수정하기보다는 crontab_conf를 수정 



emergency rpi sync)
실행하기전 pi 마운트
emergency.sh

최초 실행이 되다가 무슨문제로 실행이 안됨
rsync ~/Documents/EMERGENCY_Raspberry_Pi /Volumes/pi --progress -av 


firewall 에서 포트 열기)


fileupload install)

ImportError: No module named sqlalchemy.orm
ImportError: No module named pysrt
ImportError: No module named pymysql

sudo pip install sqlalchemy
sudo pip install pysrt
sudo pip install pymysql

---------------------> 여기까지 파일업로드는 가능

sudo apt-get install -y  mysql-server

DB생성

app.py 루트 패스워드 조심   


Using delimiter:	;
Server version:		5.5.54-0+deb8u1 (Raspbian)
Protocol version:	10
Connection:		Localhost via UNIX socket
Server characterset:	latin1
Db     characterset:	latin1
Client characterset:	utf8
Conn.  characterset:	utf8
UNIX socket:		/var/run/mysqld/mysqld.sock


영문 데이터는 문제없지만  한글은 ?????로 보이는 문제

mysql_conf /etc/mysql/my.cnf에서 처럼 3개를 추가하면 된다

status 확인했을때  Db characterset: latin1
라면 데이터베이스를 삭제후 다시 생성한다.




VERY_IMPORTANT
