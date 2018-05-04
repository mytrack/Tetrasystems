<<MPS_YOUTUBE__OPERATION

keypoint {
	user " "
	userpl " "
	//" "
	url " "

	" " 띄어쓰기 가능, 한글가능
}


http://tsengf.blogspot.kr/2014/12/play-youtube-audio-from-command-line-on.html
sudo pip3 install mps-youtube


Running:
1. Invoke mps-youtube by running the following command from a terminal.
mpsyt
2. Configure the audio player by running the following command.
set player omxplayer
3. Search for youtube content by running the following command.
/<search terms>
4. Select one of the results to play by typing the number.




(YOUTUBE-DL raspberry pi commandline youtube player)

wget https://github.com/rg3/youtube-dl/raw/2012.02.27/youtube-dl

chmod +x youtube-dl
cp youtube-dl /usr/bin/youtube-dl

OR 

# Install dependancies
sudo apt-get install youtube-dl
# Ensure using latest version of youtube-dl to keep up with YouTube API changes
sudo youtube-dl -U
#Run youtube-dl. When prompted press enter to finish updating
sudo youtube-dl 
#Finally reboot for good measure
sudo reboot


how to use ......

mpsyt <- RUN   
h
help basic
help config
help search 
......






search......

user <username> <-- youtube profile name above Subscribe button
save <playlistname> 




> help search 

playlists search by user



> userpl voa learning english

userpl <username on profile> 
userpl Michael Elliott
userpl ted 
userpl jason english

//Kendra's Language School

playurl https://youtu.be/kX7i3l0WSe8
playurl https://youtu.be/Lvn-GRjKQ6Q
playurl https://youtu.be/OyTf2P5quxM?list=PL6_so45sg_IfSTNwRxZAkTShCp-kTQtyW

왕초보 영어회화 무작정 따라하기
playurl https://www.youtube.com/playlist?list=PL6_so45sg_IfSTNwRxZAkTShCp-kTQtyW 




> pl <playlist url>


검색하고자 하는 playlist 검색이 안될 경우 검색방법 2가지
ex) The 20 Most-Watched TEDTalks <--- 플레이리스트 타이틀

1. pl https://www.youtube.com/playlist?list=PL70DEC2B0568B5469 
   pl  <playlist url>

2. //The 20 Most-Watched TEDTalks


list search by user

> user <username>


ex) user ted 
save ted 
open ted 
play ted


help download

playurl https://youtu.be/TxPyPd8MjrQ


help playlists

add ... ls ... mv ... rmp ...

open ... play ... save ...

rm ... 


set player <player_app> .......

omxplayer --> 뮤직플레이어로 제일 좋다. 플레이리스트 멀티리스트 플레이 안됨. 롱플레이 한곡용으로 좋다. 로드가 적게 걸린다. 
mpv       --> 어학용. 플레이리스트 멀티리스트 플레이어로 좋다. 로드가 많이 걸려서 끊김이 자주 발생.
mplayer  ---> 최악이다.


*** -> if error retrying ....)
mpsyt > help config > set all default > set player omxplayer

/<search word>
add 1 <playlistname>

set playerargs --vol -600 ===>  start vol = -6dB

mpsyt //best mozart,1,1-3  ====> continuous invoke command
mpsyt //best beethoven,1,1-3  ====> continuous invoke command
mpsyt //christmas carol, 4, all







<other MANUAL>
http://www.webupd8.org/2014/02/new-command-line-youtube-player-and.html

install player mplayer or mpv
sa-gi mplayer or sa-gi mpv
set player mplayer or mpv

set <- view configuration

3-7 shuffle  -> RANDOM MODE
3-7 repeat   -> REPEAT MODE
3-7 shuffle repeat -> RANDOM REPEAT MODE

mpsyt /best mozart 1,all <- INVOKE RUN


invoke......

mpsyt open ted,shuffle all  

--> Invoke many speech player  
ex> mpsyt set player mpv,open ted,shuffle all

--> Invoke long music player
ex> mpsyt set player omxplayer,open xpress,shuffle all



config......
 
~/.config/mps-youtube/playlist_v2  <---- playlist backup file 





upgrading......

sudo pip3 install mps-youtube --upgrade

alias my-upgrade='sudo pip3 install mps-youtube --upgrade'




MPS_YOUTUBE__OPERATION

















<<SPARK_____Terminal_Invoke_my-mpv-xpress

say "Terminal Invoke my-mpv-xpress"


tell application "Terminal"
	activate
	do script ("expect -c 'spawn ssh pi@pi; expect \"*?assword:*\"; send \".,_AERO)(*&^\\r \";  send \"my-mpv-xpress\\r \";
	interact'")
	
end tell

(*
tell application "Terminal"
	activate
	do script ("expect -c 'spawn ssh pi@pi; expect \"*?assword:*\"; send \".,_AERO)(*&^\\r \";  send \"play\\r \";send \"vol\\r \"; interact'")
	
end tell



--> Invoke many speech player  
ex> mpsyt set player mpv,open xpress,shuffle all

alias my-mpv-xpress='mpsyt set player mpv,open ted,shuffle all'

--> Invoke long music player
ex> mpsyt set player omxplayer,open bach,shuffle all

alias my-omx-bach='mpsyt set player omxplayer,open bach,shuffle all'

*)

SPARK_____Terminal_Invoke_my-mpv-xpress



<<SPARK_____Terminal_Invoke_my-omx-bgm 

say "Terminal Invoke my-omx-bgm"


tell application "Terminal"
	activate
	do script ("expect -c 'spawn ssh pi@pi; expect \"*?assword:*\"; send \".,_AERO)(*&^\\r \";  send \"my-omx-bgm\\r \";
	interact'")
	
end tell

(*
tell application "Terminal"
	activate
	do script ("expect -c 'spawn ssh pi@pi; expect \"*?assword:*\"; send \".,_AERO)(*&^\\r \";  send \"play\\r \";send \"vol\\r \"; interact'")
	
end tell



--> Invoke many speech player  
ex> mpsyt set player mpv,open xpress,shuffle all

alias my-mpv-xpress='mpsyt set player mpv,open xpress,shuffle all'

--> Invoke long music player
ex> mpsyt set player omxplayer,open bgm,shuffle all

alias my-omx-bgm='mpsyt set player omxplayer,open bgm,shuffle all'

*)

SPARK_____Terminal_Invoke_my-omx-bgm