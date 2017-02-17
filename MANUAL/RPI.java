<<RASPBERRY_PI



RASPBERRY_PI


<<TRASPIX_INSTRUCTION_MANUAL


트라스픽스 운영 매뉴얼

https://www.raspberrypi.org/downloads/raspbian/ 
웹접속 -> 최신 버전 다운로드 -> zip 이 약간 빠르다
최신버전이 아니어도 되면 Download ZIP 실행한다.
압축해제, ApplePi-Baker 실행 
왼쪽 SD 드라이브 선택 
IMG file 에 푼 이미지파일 선택후 Restore Backup 버튼
10 분정도 걸리니 잠시 다른 일을 한다
SD를 라즈베리파이에 장착후 부팅
보통 바로 ssh로 접속이 되나 안되면 이때부터 험난한 작업이...
192.168.1.1(공유기)에서 IP확인
확인했으면 ping IP로 확인
처음 부팅하면 거의 그래픽상태라서 키가 안먹으므로 
이런 방법이 있다 
Ctrl-Alt-F1 for tty1 
Ctrl-Alt-F2 for tty2
Ctrl-Alt-F7 to return to X
(무선키보드도 Fn키 같이 누르지마라 그냥 Ctrl-Alt만)
를 이용하여 콘솔로 로긴하여 리부팅하여 확인
pi(엔터)raspberry(엔터) 후 감각적으로 로그인한다. 

자~ 드디어 이 명령어를 쓸때가 왔다. 이명령을 몰랐다면 라즈베리파이는 포기해라
이전에 이명령도 모르고 무식하게 방향키 몇번누르고 하던 무식한 니가 있었다.
물론 모니터없이 이런 작업을 한다는 지금 자체가 무식의 극치다. 
****************************
sudo /etc/init.d/ssh start
****************************
그러고 난다음 이전에 완전 무식할때는 리부팅했지만 이제는 바로 
ssh pi@IP로 접속한다.

성공했는가? 그래 니 인생도 그렇게 성공할거다. 인생이라는 것은 바로 이런거야. 
보이지 않아도 확실하지 않아도 시도해보고 실패하고 시도하고 결국은 성공하는거야.

맥북과 싱크하기 위해 패스워드 변경
sudo raspi-config > Expand Filesystem > reboot
sftp 접속 > put emergency_pi.tgz 
pi@raspberrypi$ tar zxvf ermergency_pi.tgz
여기까지 했으면 이제 거의 이전 시스템과 똑같은 거다. 정말??

Welcome To TRASPIX !!! Total RASpberryPI eXpress 
트라스픽스 이게 뭐냐고? 그냥 지금까지의 라즈베리파이 잡기술의 창작 집약체다. 
직접 만들었지만 별거 없다. 그냥 스크립트다. 
하지만 트라스픽스가 있기에 이제 라즈베리파이를 날려먹어도 별로 걱정은 없다. 

현재 총 6가지 옵션이 있다. 계속 업그레이드 할 예정.
birth, config, samba, trans, backup, 그리고 무옵션인 업그레이드.

1~3)까지는 꼭 순서를 지킬 것 

1)Traspix birth    -> 최초 탄생 옵션으로 인터넷세상과 연결하여 길들여준다. 오래걸린다. 

2)Traspix config   -> 환경설정을 한다. vi를 쓰기전에 꼭!이 아니라 nano를 쓰자

3)Traspix restore  -> 중요하다. 조심해야 한다. home에 백업용 emergency_pi 디렉토리가 꼭 있어야한다.

crontab_conf 는 특성상 수동으로 최초 설정해준다. 백업만 자동화


이다음부터는 설명을 생략~ 알아서...
Traspix samba 
Traspix transmission 


backup 명령은 최초 사용시 주의가 필요하다. 
모두 날릴 수가 있다. 
최초 emergency_pi 완전히 restore 셋팅후에 백업을 수행한다.
디렉토리를 꼭 압축해제하여  생성되어 있어야 한다.
Traspix backup  





이거때문에 고생하지말것
!!!!important!!!!ERROR(XXXXXXX) "rpc-whitelist": "192.168.*.*","127.0.0.1", 
whitelist 에서 "", 는 하나로만 묶어야된다 "","",로 나오는 문서는 틀린것.

그리고 sudo service transmission-daemon restart 를 autostartup.sh 에 꼭 시작시켜준다


Prototype A - Jessie Lite
CLI-autologin, 
password changed, 
ssh server enabled,
iptables firewall.conf방식으로 부팅후 시작, 
no Expand Filesystem,
no ssh root login,
static ip


TRASPIX_INSTRUCTION_MANUAL






















