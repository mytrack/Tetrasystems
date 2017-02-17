<<MAXpress



{      # = cmd		   ^ = ctrl		! = alt		+ = shift     }

#TAB			CYCLE
#`				
#N				CREATE
#T              
#N+
#W				DESTROY
#Q
#C  			COPY
#V   			PASTE
#V!   			MOVE
#Z      		UNDO
#X				CUT
#A 				SELECT ALL
#R 				RELOAD
#K  			CONNECT
#F 				FIND
#O 				OPEN
#L  			ADDRESS
#BS 			DELETE
#BS+ 			Empty TRASH
#BS^+ 			open TRASH
#BS!+ 			Empty TRASH immediately
#[] 			NAVI FINDER/SAFARI
#[]+ = #{}		TAB	TERMINAL/SUBLIME
#SP 			SPOTLIGHT
#ADO+L! 		GO APPLICATION/DESKTOP/DOCUMENT/DOWNLOAD
#HCKU+			GO HOME/COMPUTER/NETWORK/UTILITY
#G+ 			GO
#M 				MINI
(#M!)			MINI ALL
(#J!)   		MERGE ALL

(#Z^)			ZOOM
#F^				FULL
#/       		STATUS
#,				PREFERENCE
#P! 			PATH
#ESC!  			FORCE
#1234			VIEW
#1234567^		ARRANGE
#34+			CAPTURE
#L#ENTER		COPY TAB SAFARI
#+\             ALL TAB

#+! 			SIZE UP
#-!				SIZE DOWN		

^TAB			TAB FINDER/SAFARI
^SP 			INPUT
^F2	 			APPLE
^F3 			DOCK
(^S+) 			SPP


SPP = #^+ = #CS= System Preferences Panel

SPP > DISPLAY
SPP > MOUSE > SPEED
SPP > ACCESSIBILITY > DISPLAY > CURSOR SIZE
SPP > LANGUAGE&REGION > ENGLISH primary <- * shortcut problem
SPP > USER&GROUP
SPP > DOCK <- CHECK ALL
SPP > SPOTLIGHT


< MACOS SPP default shortcut keys >
SPP > KEYBOARD > SHORTCUT > APP SHORTCUT

-> All Applications > + > 		
Restart |					#^!COMMA  CA#COMMA
Merge All Windows  			#! J
Move Tab to New Windows 	#! X
Bring All to Front			#! B
Minimize All 				#! M
Compress 					#^ Z


(Spark)
Backup Spark Library  		#^+L 	

Mackey 키누르는순서가 중요----------------------------------------------------------------------
^,!,# : CA#: basic key
  !#  :  A#: A#J A#M A#arrow  <--주의 예약키가 많음, 잘 찾아보면 비어있는 키가 있다.
  ^#  :  C#: C#F 
  +#  :  S#: S#N 
 ^+   :  CS: MainApplications
 ^+!  : CSA: SubApplications -> tiny app
 ^+#  : CS#: SPPLauncher, FinderLauncher, SMBMount, MultiLauncher, TTC(TerminalThemeChanger)
 ^!#  : CA#: Link, Reboot
 ^!#+ :CA#S: WatchTransmission, SparkBackup -> full key 
F^!#  :FCA#: ExtendLink
 +!#  : SA#: TerminalManual, OnekeySSHLogin, NetworkControl, doscript, directive
-------------------------------------------------------------------------------------------


TETRA FOLDER

terminal > cd 
>>> rsync /Volumes/OSX/Users/kimsungsoo/tetra/ tetra --progress -av
>>> rsync /Volumes/ART/Users/kimsungsoo/tetra/ tetra --progress -av

rsync -av --delete /directory /directory/


{ Spotlight }

shortcuts
spotlight
security
general
dock
energysaver
startupdisk
online
offline
connect_ethernet
disconnect_ethernet
bluetooth_turn_on_off
bluetooth_connect_disconnet

xpander
xpace
attention
workstation
ssh_pi


Tetra-Terminal Setup -> font = Andale mono/Menio


DOC program dmg + important program > copy > install

vi /private/etc/hosts  <- pi 






defaults write -app iTunes AppleLanguages "(ko)"
defaults write -app iTunes AppleLanguages "(en)"

automator  > Service > Copy to Clipboard >  files or folders, Finder > save as Copy Path

automator  > Service > Run AppleScript >  no input, any application > save as Shortcut_service
SPP > Keyboard > Shortcuts > Services

SPP > Accessibility > Trackpad Options > Enable dragging Check






< STUDY >

from turtle import *


photoshop deinstaller 파일이 있음 +#U
brew search vim
brew install vim

A#SPACE <- FullSearch 

activate  -> AppleScript 에서 화면에 나타나지 않을때 나타나게 함

Torrent EXT HDD filesystem hfsplus -> ext4 로 변경 ; disable journaling  문제 저널링해제하면 불안정한듯
OSXFuse로 변경 아래에서 다운로드
http://osxfuse.github.io 
-일반확장용 -> hfsplus
-토렌트용 -> ext4 <-  비상용으로 두개


+tab = shift+TAB <- 탭키로 포커스이동중 역이동시 시프트키 사용 <- 중요한 팁
#Z <- reopen safari recently closed tab = UNDO
calendar <- spotlight ; automator alarm setting
!DOWN=optionDOWN=end of list in finder
alias ls = 'ls -G'

파일명(대소문자) 일괄변경 -> automator 

아래의 명령이 제대로 동작함----------------------------------------------------
find . -iname '*.txt' -exec mv {} ../txt \;
find / -name '*.jpg' -exec mv {} ../jpg \;
find . -name '*ABC*' -exec cp {} ABC \;
.  현재디렉토리에서 하위디렉토리 전체로 내려감
/ 루트디렉토리에서 .....
-iname 대소문자구분하지않음
-name 대소문자구분함
\; <---- 꼭 추가해야 됨


----------------작동이 잘 안됨------------------------------------------------- 
find * -type f -print -not -type d -and -not -regex 'jpg' -exec mv {} .. \;
Move  sub/sub/sub/..... *.jpg   ../HERE 
find * -type f -print -not -type d -and -not -regex '.jpg' -exec mv {} ../HERE \;
----------------작동이 잘 안됨------------------------------------------------- 

=====================================================================
xcode-select --install

http://macnews.tistory.com/385

/System/Library/CoreServices/   <--- Finder 

----------------------------------------------------------------------------------------
property the_path : "/Volumes/MyMacDrive/Mani/WorkSpace/"
set the_folder to (POSIX file the_path) as alias
tell application "Finder"
    activate
    if window 1 exists then
        set target of window 1 to the_folder
    else
        reveal the_folder
    end if
end tell

property osx_path : "/Volumes/OSX/Users/kimsungsoo/Desktop"
set osx_folder to (POSIX file osx_path) as alias
tell application "Finder"
	activate
	if window 1 exists then
		set target of window 1 to osx_folder
	else
		reveal osx_folder
	end if
end tell

----------------------------------------------------------------------------------------
tell application "Finder" to open "OSX:Users:kimsungsoo:Desktop"
tell application "Finder" to open "ART:Users:kimsungsoo:Desktop"
tell application "Finder" to open "MAC:Users:kimsungsoo:Desktop"
tell application "Finder" to open "MACBOOK:Desktop"
  



----------------------------------------------------------------------------------------
tell application "Finder" to open ("/Volumes/MyMacDrive/Mani/WorkSpace/" as POSIX file)

or

tell application "Finder" to open "MyMacDrive:Mani:WorkSpace"

or

do shell script "open /Volumes/MyMacDrive/Mani/WorkSpace/"


if front Finder window exists then
        set target of front Finder window to the_folder
    else
        open the_folder

----------------------------------------------------------------------------------------

on run {input, parameters}
	
	(* Your script goes here *)
	tell application "System Events"
		
		keystroke " " using {command down}
		keystroke "omnidisksweeper"
		delay 1
		key code 36
		
		keystroke " " using {command down}
		keystroke "cleanmymac"
		delay 1
		key code 36
		
		
		keystroke " " using {command down}
		keystroke "diskutility"
		delay 1
		key code 36
		
		---keystroke "a" using {command down, shift down}
		---key code 54
	end tell
	
	return input
end run



----------------------------------------------------------------------------------------


tell application "Finder"
	
	activate
	open "OSX:Users:kimsungsoo:Desktop"
	open "ART:Users:kimsungsoo:Desktop"
	open "ELCAPITAN:Users:kimsungsoo:Desktop"
	open "DATA:"
	
	try
		open "MOKA:"
		open "CREMA:"
		open "CLON:"
	end try
	
	set t to target of Finder window 1 ----> *window 다름 
	set toolbar visible of window 1 to true ----> *window 다름
	try
		set bounds of window 1 to {0, 0, 1000, 500} ---> * window 같음
	end try
end tell

tell application "System Events"
	tell process "Finder"
		keystroke "j" using {command down, option down}
	end tell
end tell
----------------------------------------------------------------------------------------

tell application "Finder" to activate
tell application "System Events"
	keystroke "s" using {command down, option down}
	keystroke "p" using {command down, option down}
	keystroke "/" using {command down}
end tell

----------------------------------------------------------------------------------------






----------------------------------------------------------------------------------------
Photo Theater Lite
Photo show - Movie Maker

----------------------------------------------------------------------------------------
tell application "Finder"
	---set latestFile to last item of (sort (get files of (path to downloads folder)) by creation date) as alias
	set latestFile to item -1 of (sort (get files of (path to downloads folder)) by creation date) as alias
	set fileName to latestFile's name
end tell


/private

~/Library/Preferences/Macromedia/Flash\ Player

~/Library/Caches/Adobe/Flash\ Player

/Library/Internet Plug-Ins Disabled

/Users/kimsungsoo/Library/Workflows/Applications/Calendar


== MAC OSX Bootcamp Windows 7 Setup =====================

Bootcamp "Create a Windows 7 install disk" option checkbox visible....

here is answer "good!!!"----> http://tsentas.net/create-a-windows-7-or-later-version-install-disk-missing-on-el-capitan/

<Create a Windows 7 or later version install disk missing on El Capitan >
1) $ cp /Applications/Utilities/Boot\ Camp\ Assistant.app/Contents/Info.plist Desktop/
2) open with TextEdit, ~~ DARequiredROMVersions ~~, PreUSBBootSupportedModels ---> remove /Pre/ modify
3) $ sudo chown root:wheel Desktop/Info.plist
4) #R --> $ csrutil disable ; reboot
5) $ sudo mv Desktop/Info.plist /Applications/Utilities/Boot\ Camp\ Assistant.app/Contents/
6) #R --> $ csrutil enable ; reboot

*** csrutil dis/enable ; reboot ***


On El Capitan ==> possible without Xcode -> Text Edit 

only Windows 7 image





=====Python==============================================
sudo pip install matplotlib  <- MacOS 에서  raspberry pi 에서는 아직 안해봤음
from visual import *    <- math error 시 

 
====Raspberry Pi=========================================

sudo cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq
sudo find / -iname "cpuinfo_cur_freq" <--- 찾기 힘들면 무조건 파인드

sudo apt-get install openvpn openssl

sudo apt-get install gcp 
sudo apt-get autoremove/remove gcp -> 웬만하면 autoremove 

추천 설치 -> gcp rsync

# watch -n 2 "vcgencmd measure_temp"
-> every 2 second temperature check


command line first -> ^A ^E


====HARDWARE=========================================

UART	-> Async Receiver Transmitter RX/TX 	->1line = Serial I/O(시리얼포트) 
I2C	-> SCL SDL  Serial Clock/Data 		->2line
SPI 	-> MOSI MISO SCLK CS 			->4line	
GPIO	-> General Purpose Input Output

PID  	-> Proportion Integration Differentiation 

MPU6080 

  
== git ===========================================

-------------------------------Workspace
mkdir <Tetrasystems>  <----- Tetrasystems 작업이름
cd <Tetrasystems>


-------------------------------Create
git init


-------------------------------Connect
git remote add origin https://github.com/tetrasys/<Tetrasystems>.git


-------------------------------Work
git add(rm) file
git commit -m "msg"


-------------------------------Confirm 
git status 
git log


-------------------------------Upload 
git push -u origin master  -> github.com repository = <Tetrasystems> 존재해야됨.


-------------------------------Download
git clone https://github.com/tetrasys/<?>


-------------------------------Sync
git pull 

== git ===========================================



== restore ===========================================

<< MAC restore >>

Plan A) Option(Alt) key, Rescue HDD or #R(error:??) -> Disk Utility -> Turn off WiFi, Use LAN -> Reinstall OSX
	 
Plan B) OS X Start -> Download “Install OS X ???.app” -> Make SD/USB bootable install Disk 



#Sh --> home directory 

Desktop/Documents/Downloads/Pictures/Library(hidden)/tetra  ===> Backup



<< iTunes RESET >>


(iTunes Direct Library )
#, -> Advanced -> Uncheck "Copy files to iTunes....." 

1) $ rm ~/Music/iTunes/iTunes\ Library.itl  
2) $ rm -rf ~/Music/iTunes/iTunes\ Media/Music 
3) restart iTunes

iTunes -> New Playlist Folder -> New Playlist -> Add Music
-> On My Device -> Music -> FullDownMenu "~folder" select 
-> Setting -> check "Replace all item..."
====> Autofill


<< uTorrent >>

#Sg -->  ~/Library/Application Support/uTorrent  --> Copy

or

uTorrent Run -> #, -> Directories -> Location of .torrents: 
-> check "Store .torrents in:" -> select Others 




== restore ===========================================



== Sublime Text===========================================

//	"font_face": "Courier New",
//	"font_face": "Courier",
//	"font_face": "Monospace",
//	"font_face": "Monaco",
	"font_face": "Andale Mono",
//	"font_face": "Menlo Regular", // OSX
//	"font_face": "Ubuntu Mono", // 
//  "font_face": "Bitstream Vera Sans Mono",
//	"font_face": "Menlo Regular", // 
//	"font_face": "Planer",
//	"font_face": "Consolas", // Windows

FCA# F1  -> mac/apple
FCA# F2  -> make
FCA# F3  -> raspberry pi
FCA# F4  -> python
FCA# F5  -> this doc
FCA# F6  -> MAXpress
FCA# F7  ->
FCA# F8  -> iTunes
FCA# F9  ->
FCA# F10 -> xxx
FCA# F11 ->
FCA# F12 ->


FC F2 -> apple
FC F3 -> dock
FC F7 -> messagebox tab focus
FC F8 -> status icon 


# BACKSPACE		 -> DELETE
S# BACKSPACE 	 ->	Empty TRASH
CS# BACKSPACE 	 ->	open TRASH
SA# BACKSPACE  	 -> Empty Trash without comfirm 



== netis configuration =============================

netis > 고급설정 > DMZ/포트 포워딩 > DMZ 사용여부 > 사용함 > IP > reboot

netis > 고급설정 > DDNS > Gonetis DDNS 서비스 > 사용함 > ID 찾기 > 설정저장


== python & flask = raspberry pi web server =========================

/home/pi/www = ~/www 

sudo python app.py 

cd _www; ./www; cd -> python app.py start
cd _www; ./qwww; cd -> python app.py quit 


== vim configuration =============================
#sudo vim /etc/vim/vimrc

set number
set ai
set si
set cindent
set shiftwidth=4
set tabstop=4
set ignorecase
set hlsearch
set expandtab
set background=dark
set nocompatible
set fileencodings=utf-8,euc-kr
set bs=indent,eol,start
set history=1000
set ruler
set nobackup
set title
set showmatch
set nowrap
set wmnu

syntax on


=====================================================
막 다루지 않으면 발전도 없다 
gotta keep going! GKG!! 머무르지 마라




MAXpress
