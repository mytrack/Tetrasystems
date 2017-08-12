<<MAC_TIPS


( #=command=win !=option=alt ^=control=ctrl +=shift )


{ Blackbox SD Card Format on OSX command line }

# diskutil list

# sudo diskutil eraseDisk FAT32 REAR_4G MBRFormat /dev/disk2


{ Safari Extension }

tar zxf SafariExtensions.tar.gz 

#+g(#Sg) -> ~/Library/Safari 에 복사해도 작동하지 않음. 그래서 목록확인용으로만...

google.com, Get Extensions 에서 직접다운로드 


{ MHAudioConverter }

/Volumes/250/MAC_Backup/ART_kimsungsoo_backup



{ iTunes Direct Library }

#, -> Advanced -> Uncheck "Copy files to iTunes....." 

{ iTunes Reset }

1) $ rm ~/Music/iTunes/iTunes\ Library.itl  
2) $ rm -rf ~/Music/iTunes/iTunes\ Media/Music 
3) restart iTunes


{ Sublime Test vi Mode }

(#,)Preferences -> Setting_Default -> select all & copy -> Setting_User -> select all & paste -> find vintage 
-> delete vintage -> save -> font size 12 -> font face "Menlo"(sublime default) 

{ Spotlight Setting }

SPP -> Spotlight -> Search Results -> Check Only 'Application'


{ Security Setting Firewall}

SPP -> Security & Privacy -> Firewall -> Turn On Firewall -> Firewall Option 
-> Check 'Block all incoming connections'


{ Bluetooth Setting }

^+S -> Bluetooth -> check "Show Bluetooth in menu bar"

#SPACE -> "bluetooth_turn_on_off"

#SPACE -> "security" -> Privacy -> UNLOCK -> check "bluetooth_turn_on_off" 


{ Audio Recording }

Run Soundflower-2.0b2.dmg -> Soundflower.pkg

^+S -> Sound -> Output -> select Soundflower (2ch) -> Input -> select Soundflower (2ch)

Run QuickTime Player -> New Audio Recording -> select Soundflower (2ch)

or 

Run Easy Audio Recorder Lite 


{ Fn Control F128 key }

fn ^ f1 = fn C f1 -> enable fn^f2 

fn ^ f2 = fn C f2
-> MAC pulldown menu shortcut = apple icon select key }

fn ^ f8 = fn C f8
-> right icon select(bluetooth icon select) 


{ Network Status command }

(x)# netstat -rn or -r ---> MAC_addr b8:27:....=RaspberryPi 


{ Commandline shortcut line first/end }

^A = Ca = line first
^E = Ce = line end

{ Command Line Clipboard }

command | pbcopy


{ Home Brew Installation }

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


{ m-cli install }

brew install m-cli





