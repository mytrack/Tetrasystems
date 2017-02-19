DATEVAR=date +20%y%m%d_%H%M%S
#DATEVAR=date +%Y-%m-%d_%H:%M:%S


# specify min
#5,15,15,35,45,55 * * * * echo $($DATEVAR) >> ~/Tetrasystems/mytrack.log 
*/5 * * * * echo $($DATEVAR) >> ~/Tetrasystems/mytrack_per_5_min.log 


#0,7,17,27,37,47,57 * * * * echo $($DATEVAR) >> ~/Tetrasystems/cron_timestamp_mytrack.log 
*/10 * * * * echo $($DATEVAR) >> ~/Tetrasystems/cron_backup_timestamp_mytrack.log 
*/10 * * * * ~/backup.sh >/dev/null 2>&1


# specify hour 
#*/30 9,10,11,12,13,14,15,16,17 * * * ~/backup.sh >/dev/null 2>&
#*/5 18,19,20,21,22,23,0,1,2 * * * ~/backup.sh >/dev/null 2>&1

