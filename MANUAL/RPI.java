<<RASPBERRY_PI

라즈베리파이 매뉴얼

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

Traspix birth 
최초 탄생 옵션으로 인터넷세상과 연결하여 길들여준다. 오래걸린다. 

Traspix config
환경설정을 한다. vi를 쓰기전에 꼭!!!

이다음부터는 설명을 생략~ 알아서...

Traspix samba 
Traspix trans 








RASPBERRY_PI





















