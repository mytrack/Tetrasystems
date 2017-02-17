#!/bin/sh

# install automatic refresh daemon for Paragon ExtFS
# modified to work with more versions of the Paragon ExtFS installers

cat << EOF


-- ExtFS Refresh Scripts Installer --

This installer script demonstrates shell programming techniques such as how to
access .pkg files, install other scripts, run scheduled tasks, and more. Using
Paragon ExtFS for Mac as an example, it shows how to regularly trash a
preferences file and restart the software. This is a common troubleshooting
technique, recommended by Apple when you have problems running an application.
This script does not modify the ExtFS software in any way.

Before running it, you must have ExtFS already installed, and the installer
file "extmac_trial_u.dmg" mounted. If you no longer have it, you can download
it from the Paragon Software website. Your admin password will be required to
install the refresh scripts.

To completely uninstall, manually trash these files:
   /Library/LaunchDaemons/com.paragon.extfs.refresh.plist
   /Library/Application Support/Paragon Software/extfsrefresh.sh
   /Library/Application Support/Paragon Software/postflightinit-new

This script is provided to you as a gift, and is for educational purposes only!
It is not authorized or endorsed by Paragon Software. There is no guarantee that
it won't cause damages, including loss of data. You run it solely at your own
risk. Do not run this script if doing so would violate your local laws.

EOF

while true; do
    read -p "Do you wish to install the scripts (y, yes, n, no)? " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# check that the installer is mounted, and extfs is already installed
if [ ! -f '/Volumes/ParagonFS.localized/FSInstaller.app/Contents/Resources/Paragon ExtFS for Mac OS X.pkg' ]
    then
        echo "Error: Paragon ExtFS installer (extmac_trial_u.dmg) must be mounted." 1>&2
        exit 1
    fi
if ! find '/Library/Application Support/Paragon Software' | grep -q EXTFS
    then
        echo "Error: Paragon ExtFS must be installed first." 1>&2
        exit 1
fi

# make a temporary folder
mkdir /tmp/paragon_refresh_$$
cd /tmp/paragon_refresh_$$

# extract the "postflightinit" file from the installer dmg and rename it
xar -xf '/Volumes/ParagonFS.localized/FSInstaller.app/Contents/Resources/Paragon ExtFS for Mac OS X.pkg'
cat ExtFS.pkg/Scripts | gunzip -dc | cpio -i --quiet
mv postflightinit postflightinit-new

# create the refresh shell script
cat << EOF > extfsrefresh.sh
#!/bin/sh
# refresh the ExtFS installation.
# This file is NOT provided by Paragon Software.
# requires "postflightinit-new", from ExtFS installer dmg "postflightinit".
rm '/Library/Application Support/Paragon Software/EXTFS'*
'/Library/Application Support/Paragon Software/postflightinit-new'
EOF
chmod 755 extfsrefresh.sh

# create the launchd plist to run the script once per day
cat << EOF > com.paragon.extfs.refresh.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<!-- This file is NOT provided by Paragon Software -->
<dict>
    <key>Label</key>
    <string>com.paragon.extfs.refresh</string>
    <key>ProgramArguments</key>
    <array>
        <string>/Library/Application Support/Paragon Software/extfsrefresh.sh</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>StartInterval</key>
    <integer>86400</integer>
</dict>
</plist>
EOF


# move files into place, check for errors

sudo rm -f /Library/LaunchDaemons/com.paragon.extfs*.refresh.plist

if ! sudo -p "Please enter your admin password:" chown root com.paragon.extfs.refresh.plist
then
    echo "Error: could not set ownership of plist file. The scripts were not installed." 1>&2
    rm -rf /tmp/paragon_refresh_$$
    exit 1
fi

if ! sudo mv com.paragon.extfs.refresh.plist /Library/LaunchDaemons
then
    echo "Error: could not install plist file. The scripts were not installed" 1>&2
    rm -rf /tmp/paragon_refresh_$$
    exit 1
fi

sudo rm -f /Library/LaunchAgents/com.paragon.extfs*.plist
sudo rm -f '/Library/Application Support/Paragon Software/postflightinit'*
sudo rm -f '/Library/Application Support/Paragon Software/extfs'*

if ! sudo mv postflightinit-new '/Library/Application Support/Paragon Software/'
then
    echo "Error: could not install postflightinit file. The scripts were not installed." 1>&2
    rm -rf /tmp/paragon_refresh_$$
    sudo rm /Library/LaunchDaemons/com.paragon.extfs.refresh.plist
    exit 1
fi

if ! sudo mv extfsrefresh.sh '/Library/Application Support/Paragon Software/'
then
    echo "Error: could not install shell script file. The scripts were not installed." 1>&2
    rm -rf /tmp/paragon_refresh_$$
    sudo rm /Library/LaunchDaemons/com.paragon.extfs.refresh.plist
    sudo rm '/Library/Application Support/Paragon Software/postflightinit-new'
    exit 1
fi

# successfully installed, delete the temporary folder
rm -rf /tmp/paragon_refresh_$$

echo "ExtFS refresh scripts were installed, please restart your computer."
exit 0
