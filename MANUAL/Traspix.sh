<<TRASPIX_HEAD
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
|------------------------------------------------------------------------|
|                                                                        |
|                                                                        |
|                   Total Raspberrypi Express Shell                      |
|                                                                        |
|                               TRASPIX                                  |
|                                                                        |
|------------------------------------------------------------------------|
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
TRASPIX_HEAD


PATH=$PATH:/bin:/usr/bin:/usr/sbin
EMERGENCY='EMERGENCY_Raspberry_Pi'
_CONF='_conf'
_HOME_PI='_home_pi'
_USR_SBIN_COMMAND='_usr_sbin_command'
MY_IPTABLES_POLICY='201701_firewall_conf'
SAMBA_CONF='_conf/samba_conf'
TRANSMISSION_CONF='_conf/transmission_conf'
CRONTAB_CONF='_conf/crontab_conf'
ALIAS_CONF='_conf/alias_conf'
YOUR_IP='192.168.1.30'
exist() {
    command -v "$1" >/dev/null 2>&1
}
cd /home/pi

#____________BIRTH setting & upgrade______________________________________________________________________________________________________________________
if [[ "birth" == $1 ]]; then
    echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Welcome to Raspberrypi The BIRTH Setting & Upgrading......"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo

	sudo apt-get update -y && sudo apt-get upgrade -y
	sudo apt-get dist-upgrade -y
	sudo apt-get install nano vim -y
	sudo apt-get install gcp -y
	sudo apt-get install mc -y
	sudo apt-get install ntfs-3g -y
	sudo apt-get install mpg321 -y


    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Finished.  BIRTH Setting & Upgrading...... bye ~ ^^*"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo	
#____________ CONFIGURATION _______________________________________________________________________________________________________________________
elif [[ "config" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, CONFIGURATION Process......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo


if [ -f "$EMERGENCY.tgz" ]; then
	echo "$EMERGENCY.tgz found."

	read -p "Uncompress $EMERGENCY.tgz, _conf.tgz"

    tar zxvf $HOME/$EMERGENCY.tgz 
	tar zxvf $EMERGENCY/_conf.tgz	
	read -p "Copy vimrc_conf -> /etc/vim/vimrc Configuration completed."
	echo
	sudo cp $HOME/_conf/vimrc_conf /etc/vim/vimrc
	echo
	read -p "Please, Set up Timezone & Wifi Country !"	
	sudo raspi-config
	echo
	read -p "configuring my command ..."
	sudo ln -s $HOME/Traspix.sh  /usr/sbin/
	tar zxvf $EMERGENCY/_usr_sbin_command.tgz
	sudo cp $HOME/_usr_sbin_command/qqq /usr/sbin
	sudo cp $HOME/_usr_sbin_command/play /usr/sbin
	sudo chmod 755 /usr/sbin/qqq
	sudo chmod 755 /usr/sbin/play
	echo
	read -p "configuring my alias ..."	
	echo
	vi $HOME/_conf/alias_conf $HOME/.bash_aliases
else
	echo "$EMERGENCY.tgz not found."
	echo "Failed CONFIGURATION ..."	
	exit 1
fi
	echo
	echo
    echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  CONFIGURATION Process...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo	
#____________ ALIAS _____________________________________________________________________________________________________________________
elif [[ "alias" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, ALIAS ......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo
	echo

if [ -f "$ALIAS_CONF" ]; then
	echo "$ALIAS_CONF found."
	echo
	read -p "Configuration my alias ..."	
	echo
	vi $ALIAS_CONF $HOME/.bash_aliases
	echo
else
	echo "$ALIAS_CONF not found."
	echo "Failed ALIAS ..."
	exit 1	
fi
    echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  ALIAS ...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo	
#____________ MANUAL _______________________________________________________________________________________________________________________
elif [[ "man" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, MANUAL Process......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo
	read -p "NEVER /etc/init.d/networking STOP"	
	echo
	echo
	echo
	echo "sudo /etc/init.d/networking restart"
	echo "sudo /etc/init.d/networking reload"
	echo "sudo /etc/init.d/cron restart"
	echo "sudo /etc/init.d/samba restart"
	echo "sudo /etc/init.d/apache2 restart"
	echo "sudo service transmission-daemon restart"
	echo "ssudo vi /etc/network/interfaces"
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  MANUAL Process...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo		
#____________ DISKSPACE _______________________________________________________________________________________________________________________
elif [[ "diskspace" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, DISKSPACE Process......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo
	echo
	#if exist wolfram-engine; then
	#	read -p "Almost 1GB Diskspace will be Freed ..."	
	#else
	#	echo wolfram-engine & libreoffice already removed
	#fi	
	echo
	read -p "Almost 1GB Diskspace will be Freed ..."	
	echo
	echo

	sudo apt-get purge wolfram-engine -y
	sudo apt-get remove --purge libreoffice* -y

	sudo apt-get clean
	sudo apt-get autoremove -y
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  DISKSPACE Process...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo			
#____________ RESET _______________________________________________________________________________________________________________________
elif [[ "reset" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, RESET Process......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo
	command_line=(
	"sudo /etc/init.d/networking restart"
	"sudo /etc/init.d/networking reload"
	"sudo /etc/init.d/cron restart"
	"sudo /etc/init.d/cron reload"	
	"sudo /etc/init.d/samba restart"
	"?sudo /etc/init.d/apache2 restart"
	"?sudo /etc/init.d/mysql restart"
	"?sudo service transmission-daemon restart"
	"?sudo vi /etc/network/interfaces"
	"NEVER /etc/init.d/networking STOP"	
	)
	command_line_test=(
	"sudo /etc/init.d/networking restart"
	"sudo /etc/init.d/networking reload"
	"sudo /etc/init.d/cron restart"
	)	
	if [[ "cmd" == $2 ]]; then
		for ((i=0; i < ${#command_line[@]}; i++)) ; do
			eval "${command_line[$i]}"
		done
    else
		for ((i=0; i < ${#command_line[@]}; i++)) ; do
			printf "%d. %s\n" "$(($i+1))" "${command_line[$i]}"
		done
    fi
	echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  RESET Process...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo
#____________ SECURITY _____________________________________________________________________________________________________________________
elif [[ "security" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, SECURITY ......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo
	echo
	if [[ "ufw" == $2 ]]; then
		echo    "Build {Firewall} with ufw(this is easy)..."
		if exist ufw; then
			echo    ufw already installed
			read -p 'Start configuration...' >&2
		else
			echo
			sudo apt-get install -y ufw
		fi	
		echo
		echo    "Very Important !!! allow SSH connection ..."
		read -p "> sudo ufw allow 22 ..."
		sudo ufw allow 22
		echo
		echo    "All connection is allowed from Your IP ..."
		read -p "> sudo ufw allow from $YOUR_IP ..."
		sudo ufw allow from $YOUR_IP
		echo
		echo    "Display ufw status ..."
		read -p "> sudo ufw status ..."
		sudo ufw status
		echo
		echo    "Very Important !!! Think twice before ENABLE..."
		read -p "> Manually: sudo ufw enable ..."
		echo
		exit 1
	fi	

	read -p "Setting static IP ..."
	echo
	sudo vi _conf/security_conf /etc/network/interfaces
	echo

	read -p "Setting SSH PermitRootLogin -> no ..."
	echo
	sudo vi _conf/security_conf /etc/ssh/sshd_config
	sudo /etc/init.d/ssh restart
	echo	
	echo
	echo

if [ -f "$MY_IPTABLES_POLICY" ]; then
	echo "the policy file $MY_IPTABLES_POLICY found."
	echo
	read -p "Build {Firewall} with iptables ..."
    echo
    echo    "1. Get default iptables policy:"
	read -p "> sudo iptables-save > iptables_policy"
	sudo iptables-save > iptables_policy 
    echo
    echo
    echo    "2. Add my policy to default policy:"
	read -p "> sudo vi $MY_IPTABLES_POLICY iptables_policy"
	sudo vi $MY_IPTABLES_POLICY iptables_policy 
    echo
    echo
    echo    "3. Apply the firewall policy to raspberrypi:"
	read -p "> sudo iptables-restore < iptables_policy"
	sudo iptables-restore < iptables_policy 
    echo
    echo
    echo    "4. Make the firewall policy permanently"
    echo
    echo    "From now, Remeber the 7 command lines & do it yourself !"
    echo    "> sudo -s  ..... login as root"
    echo    "> iptables-save > /etc/firewall.conf ...get present policy"
    echo    "..............[ Include on Boot ]"
    echo    "> echo '#!/bin/sh' > /etc/network/if-up.d/iptables"
    echo    "> echo \"iptables-restore < /etc/firewall.conf\" >> /etc/network/if-up.d/iptables"
    echo    "> chmod +x /etc/network/if-up.d/iptables"
    echo    "..............[ Save on Shutdown/Reboot ]"
    echo    "> echo '#!/bin/sh' > /etc/network/if-down.d/iptables"
    echo    "> echo \"iptables-save > /etc/firewall.conf\" >> /etc/network/if-down.d/iptables"
    echo    "> chmod +x /etc/network/if-down.d/iptables"
    echo    "After rebooting, check -> sudo iptables -L"
    echo
	read -p " Are you ready ? Let's go ~"
    echo

else
	echo "the policy file $MY_IPTABLES_POLICY not found."
	echo "Failed build {Firewall} ..."	
	exit 1	
fi

    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  SECURITY ...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo		
#____________ SAMBA _____________________________________________________________________________________________________________________
elif [[ "samba" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, SAMBA Install or Upgrading......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo
		
if [ -f "$SAMBA_CONF" ]; then
	echo "$SAMBA_CONF found."

	if exist samba; then
		echo Samba already installed
		read -p 'Start configuration...' >&2
	else
	    sudo apt-get install samba samba-common-bin -y
	fi
    	
	sudo vi $SAMBA_CONF /etc/samba/smb.conf
	sudo /etc/init.d/samba restart
	echo "SAMBA USER pi PASSWORD change"
	sudo smbpasswd -a pi
	sudo /etc/init.d/smbd restart
	sudo /etc/init.d/nmbd restart
else
	echo "$SAMBA_CONF not found."
	echo "Failed SAMBA ..."
	exit 1	
fi	
    echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  SAMBA Install & Upgrading...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo
#____________ TRANSMISSION _____________________________________________________________________________________________________________________
elif [[ "transmission" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, TRANSMISSION Install or Upgrading......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo
		

if [ -f "$TRANSMISSION_CONF" ]; then
	echo "$TRANSMISSION_CONF found."
	echo
	if exist transmission-daemon; then
		echo Transmission-daemon already installed
		read -p 'Start configuration...' >&2
	else		
		sudo apt-get install transmission-daemon -y
	fi
	sudo mkdir -p /home/pi/torrent/progress
	sudo mkdir -p /home/pi/torrent/completed
	sudo mkdir -p /home/pi/torrent/watch
	echo
	echo

#<<EXT_HDD ~ 최초 하드추가시 유저 pi에 권한부여... 
# transmission 설정 및 동작과는 상관무
	if [[ "HDD" == $2 ]]; then

	read -p "Transmission Config New External HDD Setup..."

	sudo usermod -a -G debian-transmission pi
	sudo chgrp debian-transmission /home/pi/torrent/progress
	sudo chgrp debian-transmission /home/pi/torrent/completed
	sudo chgrp debian-transmission /home/pi/torrent/watch
	sudo chgrp debian-transmission /home/pi/torrent
	sudo chmod 770 /home/pi/torrent/progress
	sudo chmod 770 /home/pi/torrent/completed
	sudo chown pi -R /var/lib/transmission-daemon/info/
	sudo chown pi -R /home/pi/torrent
	sudo chown pi -R /home/pi/torrent/progress
	sudo chown pi -R /home/pi/torrent/completed
	sudo chown pi -R /home/pi/torrent/watch

    fi	
#EXT_HDD


	echo
	echo
	read -p "Transmission Config /etc/transmission-daemon/settings.json will be modify..."
	echo
	echo
	sudo vi ~/_conf/transmission_conf /etc/transmission-daemon/settings.json
  	sudo service transmission-daemon reload
    sudo service transmission-daemon stop
	echo
	echo
	read -p "Config  /etc/init.d/transmission-daemon will be modify..."
	echo
	echo
	sudo vi ~/_conf/transmission_conf /etc/init.d/transmission-daemon
	sudo chown -R pi:pi /etc/transmission-daemon
	sudo chown -R pi:pi /etc/init.d/transmission-daemon
	sudo chown -R pi:pi /var/lib/transmission-daemon
	echo
	echo
	read -p "/etc/systemd/system/multi-user.target.wants/transmission-daemon.service will be modify..."
	echo
	echo
	sudo vi ~/_conf/transmission_conf /etc/systemd/system/multi-user.target.wants/transmission-daemon.service
	sudo systemctl daemon-reload
	sudo mkdir -p /home/pi/.config/transmission-daemon/
	sudo ln -s /etc/transmission-daemon/settings.json /home/pi/.config/transmission-daemon/
	sudo chown -R pi:pi /home/pi/.config/transmission-daemon/
	sudo service transmission-daemon start	

else
	echo "$TRANSMISSION_CONF not found."
	echo "Failed TRANSMISSION ..."
	exit 1
fi	
    echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  TRANSMISSION Install & Upgrading...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo	
#____________ MPI _____________________________________________________________________________________________________________________
elif [[ "mpi" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, MPI Install or Upgrading......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo
		
	if [ -x /usr/lib/mpich ]; then
		echo
		read -p 'mpich already installed'
		echo
	else
		echo
	    sudo apt-get install mpich -y
	    echo
	fi
	if exist mpiexec; then
		echo
		read -p 'openmpi already installed'
		echo	
	else
		echo
		sudo apt-get install openmpi-common openmpi-bin -y
    	echo
	fi

		echo
    	sudo apt-get install python-mpi4py -y
    	pip install mpi4py
    	echo

    echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  MPI Install & Upgrading...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo	
#____________ APM _______________________________________________________________________________________________________________________
elif [[ "apm" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, APM Process......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo
	if [[ "remove" == $2 ]]; then
		read -p "Apache PHP Mysql remove"	
		sudo apt-get remove -y  apache2
		sudo apt-get remove -y  mysql-server mysql-client
		sudo apt-get remove -y  php5 php5-common libapache2-mod-php5
		sudo apt-get autoremove -y
    else
		read -p "Apache PHP Mysql"	
		sudo apt-get install -y  apache2
		sudo apt-get install -y  mysql-server mysql-client
		sudo apt-get install -y  php5 php5-common libapache2-mod-php5
    fi
	echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  APM Process...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo	
#____________ TOMCAT _______________________________________________________________________________________________________________________
elif [[ "tomcat" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, TOMCAT Process......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo
	read -p "TOMCAT"	
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
	echo
	echo
    echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  TOMCAT Process...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo			
#____________ RESTORE _______________________________________________________________________________________________________________________
elif [[ "restore" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, RESTORE Process......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo

if [ -d "$EMERGENCY" ]; then
	echo "$EMERGENCY directory found."

	read -p "Restore $EMERGENCY -> $HOME ..."
    mv $HOME/$EMERGENCY/* .

	tar zxvf _conf.tgz 
	tar zxvf _home_pi.tgz 
	tar zxvf _usr_sbin_command.tgz 
	tar zxvf _www.tgz 
	tar zxvf _dev.tgz 
	tar zxvf _pub.tgz
	rm -f *.tgz

	echo
	echo "Type vi ~/_conf/crontab_conf & SHIFT-v,y"
	echo
	echo "Run crontab -e , paste"
else
	echo "$EMERGENCY directory not found."
	echo "Failed RESTORE ..."
	exit 1
fi	

    echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  RESTORE Process...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo		
#____________ BACKUP _______________________________________________________________________________________________________________________
elif [[ "backup" == $1 ]]; then
    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Okay, BACKUP Process......"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo


<<OLD_BACKUP
crontab -l > ~/_conf/crontab_conf
tar zcvf ~/_conf.tgz ~/_conf/
tar zcvf ~/_home_pi.tgz ~/_home_pi/
tar zcvf ~/_usr_sbin_command.tgz ~/_usr_sbin_command/
tar zcvf ~/_www.tgz ~/_www/
tar zcvf ~/_dev.tgz ~/_dev/
tar zcvf ~/_pub.tgz ~/_pub/
rm -rf ~/emergency_pi/*
mv ~/*.tgz ~/emergency_pi
cp ~/*.sh ~/emergency_pi
cp ~/*.log ~/emergency_pi
cp ~/ReMountHDD_And_RestartTorrent ~/eee ~/emergency_pi/
OLD_BACKUP


# file exist ? check
if [ -f "$CRONTAB_CONF" ]; then
	echo "$CRONTAB_CONF found."
crontab -l > $CRONTAB_CONF 
	echo "crontab backup completed."
	echo
else
	echo "$CRONTAB_CONF not found."
	echo "Failed backup crontab  ..."
	exit 1	
fi	


# directory exist ? check
if [[ -d "_conf" && "_home_pi" && "_usr_sbin_command" ]]; then
	echo "directory _conf/, _home_pi/, _usr_sbin_command/ found."
	echo
	echo "Backup /home/pi -> $EMERGENCY ..."
	read -p "Are you sure? enter or ^z(stop)"
	echo
	tar zcvf _conf.tgz  _conf/
	tar zcvf _home_pi.tgz  _home_pi/
	tar zcvf _usr_sbin_command.tgz   _usr_sbin_command/
	tar zcvf _www.tgz  _www/
	tar zcvf _dev.tgz  _dev/
	tar zcvf _pub.tgz  _pub/
	tar zcvf _TEST_.tgz  _TEST_/

	if [ ! -d "$EMERGENCY" ]; then
    # Control will enter here if $EMERGENCY doesn't exist.
        echo
    	echo "$EMERGENCY doesn't exist."
        echo
	    read -p "$HOME/$EMERGENCY directory will be created ..."    
	    mkdir -p $HOME/$EMERGENCY
    fi

	#rm -rf $HOME/$EMERGENCY/*
	mv $HOME/*.tgz $HOME/$EMERGENCY/
	cp $HOME/*.sh $HOME/$EMERGENCY
	cp $HOME/*.log $HOME/$EMERGENCY
	cp $HOME/ReMountHDD_And_RestartTorrent $HOME/eee  $HOME/$EMERGENCY

else
	echo "$_CONF,$_HOME_PI,$_USR_SBIN_COMMAND not found."
	echo "Failed backup, please re-check ..."
	exit 1
fi	

    echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Finished.  BACKUP Process...... bye ~ ^^*"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo	
#____________ UPGRADE _____________________________________________________________________________________________________________________
else  
    echo
    echo
	echo
	echo "/////////////////////////////////////////////////////////"
	echo "Raspberrypi Upgrade Daily Process......"
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo
	echo
	echo
		

	echo "<<<<<<<<<<<<<<<<<<<<<<..Enter..Daily..Upgrading..Process..<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" 
	echo "/////////////////////////////" 
	date
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\  " 
    sudo rpi-update
    sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get clean
	echo ">>>>>>>>>>>>>>>>>>>>>>..Exit..Daily.Upgrading..Process..>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" 


    echo
    echo
	echo
	echo "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ "
	echo " Finished. Upgrade Daily Process...... bye ~ ^^*"
	echo "/////////////////////////////////////////////////////////"
	echo
	echo
	echo
#_____________________________________________________________________________________
fi 






<<BLOCK_COMMENT

T R Y   E V E R Y T H I N G !

BLOCK_COMMENT

















