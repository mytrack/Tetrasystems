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





























<<UNIX_TECHS

/////////////////////////////////////////////////
	  UNIX TECHS
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\





 현재 디렉토리에서 리커시브로 빈디렉토리 찾기 명령어
 find . -type d -empty -print

 현재 디렉토리에서 리커시브로 빈디렉토리 찾아서 지우기 명령어
 find . -type d -empty -delete <--- 이명령어 조심
디렉토리명에 심볼릭링크는 안됨


 SHIFT+v > select > Register COPY "+y or "*p  
 Register PASTE "+p or "*p

:bnext <- buffer command 
:buffer
:split
:h buffer-list

$ killall -HUP transmission-da
Or:
$ pkill -HUP transmission-da


https://pimylifeup.com/raspberry-pi-torrentbox/
sudo service transmission-daemon reload

watch -n 2 "vcgencmd measure_temp"

vim 속도때문에 syntax on 제거. 색깔 필요시 수동 :syn on

CRON 확인
로그에 올라오지 않는경우
grep CRON /var/log/syslog 
ps -ef | grep cron | grep -v grep
시간규칙 9-12는 안된다. 9,10,11,12로 사용할것
위의 규칙만 지키면 로그에 올라온다(몇분기다려야함)
가능하면cron reload/restart 명령으로 올려봄 (확실하지않음)

로그에는 올라오나 작동하지 않는경우:
cron 명령어 및 패스는 절대경로로 홈 ~

퍼미션은 가능하면 755로 한다. 꼭777은아님
크론명령줄에 * * * /bin/bash cmd 안붙여도됨


nano >

CTRL+SHIFT+6 Mark Set
CTRL+K cut line / cut
CTRL+U paste

dpkg >
sudo dpkg --get-selections | grep ufw



{ 보안정책 }

(고정아이피) -> 네트워크 속도가 약간 빨라진다.

sudo nano /etc/network/interfaces

eth0 포함 라인 주석처리하고 4라인 추가한다.

#iface eth0 inet manual
iface eth0 inet static
address 192.168.1.11
netmask 255.255.255.0
gateway 192.168.1.1




sudo vi /etc/ssh/sshd_config
항목 중
Port 1024
PermitRootLogin no
저장하고 SSH 재시작
sudo service ssh restart


iptable >



$ sudo iptables -L
Chain INPUT (policy ACCEPT)
target     prot opt source               destination 
Chain FORWARD (policy ACCEPT)
target     prot opt source               destination
Chain OUTPUT (policy ACCEPT)
target     prot opt source               destination

(iptables 정책을 파일로 얻기.)
$ sudo iptables-save > iptables_rules
$ cat iptables_rules
# Generated by iptables-save v1.4.14 on Sun Sep  6 22:44:51 2015
*filter
:INPUT ACCEPT [353:26718]
:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [181:18458]
COMMIT
# Completed on Sun Sep  6 22:44:51 2015
정책 파일 수정.

$ vi iptables_rules
*filter
:INPUT ACCEPT [0:0]
:FORWARD ACCEPT [0:0]
:OUTPUT ACCEPT [0:0]
-A INPUT -i lo -j ACCEPT 
-A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 22 -j ACCEPT 
-A INPUT -p tcp -m tcp --dport 443 -j ACCEPT
-A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
# Allow ICMP packets necessary for MTU path discovery
#-A INPUT -p icmp --icmp-type fragmentation-needed -j ACCEPT
# Allow echo request
#-A INPUT -p icmp --icmp-type 8 -j ACCEPT
-A INPUT -j DROP 
COMMIT

(iptables 정책 적용) *** -> 부팅시 적용시켜줘야한다.
sudo iptables-restore < iptables_rules

autostartup.sh 에서 적용시키거나 아래 스크립트 처럼.

(다른 방법)
/etc/firewall.conf >

sudo -s

iptables-save > /etc/firewall.conf

[INCLUDE ON BOOT]
echo '#!/bin/sh' > /etc/network/if-up.d/iptables 
echo "iptables-restore < /etc/firewall.conf" >> /etc/network/if-up.d/iptables
chmod +x /etc/network/if-up.d/iptables

[SAVE ON SHUTDOWN/REBOOT]
echo '#!/bin/sh' > /etc/network/if-down.d/iptables 
echo "iptables-save > /etc/firewall.conf" >> /etc/network/if-down.d/iptables
chmod +x /etc/network/if-down.d/iptables



log >

vi /etc/rsyslog.conf

Uncomment 
# cron.*  /var/log/cron.log

(default setting)
#cron.*             /var/log/cron.log
daemon.*            -/var/log/daemon.log
kern.*              -/var/log/kern.log
user.*              -/var/log/user.log

(Restart rsyslog)
sudo /etc/init.d/rsyslog restart

vi multiple comment >

v or SHIFT+v, VISUAL BLOCK select, :s/^/#/ 
커서가 있는행까지 채워진다.

행번호로 지정하는 방법
:10,20s/^/#  <-- Comment
:10,20s/^#/  <-- Uncomment

command_line=(
"sudo /etc/init.d/networking restart"
"sudo /etc/init.d/networking reload"
"sudo /etc/init.d/cron restart"
"sudo /etc/init.d/samba restart"
"sudo /etc/init.d/apache2 restart"
"sudo service transmission-daemon restart"
"ssudo vi /etc/network/interfaces"	
)

#echo "array=${command_line[@]}"
#printf "%s\n" "${command_line[@]}"




<<FOR_1
for value in "{$command_line[@]}" ; do
	echo $command_line
done
FOR_1

#<<FOR_2
for ((i=0; i < ${#command_line[@]}; i++)) ; do
	printf "%d. %s\n" "$(($i+1))" "${command_line[$i]}"
done
#FOR_2

<<FOR_3
for index  in ${!command_line[*]} ; do
	printf "[%d]-> %s\n" "$(($index+1))"  "${command_line[$index]}"
done
FOR_3



RPi install problem) ex)mysql  
sudo apt-get install -f
sudo apt-get install --reinstall perl-base





라즈베리파이에서는 아직...
sudo apt-get install python-dev
export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
sudo pip install –upgrade $TF_BINARY_URL











youtube 관련)

sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

sudo pip install --upgrade youtube_dl

brew install youtube-dl







\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
		                     Try Everything !!!			
/////////////////////////////////////////////////

UNIX_TECHS








<<SUBLIME_KEY

sublime text) settings -- user)
Vintage
"open_files_in_new_window": false,


#p #r #Sr ^g #g #Sg
C- jump CS- 
#[ indent ]
#/ comment 
#A[folding]
#Ar replace



#CAdown go definition

SUBLIME_KEY



