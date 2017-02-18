DATEVAR=date +20%y%m%d_%H%M%S
#DATEVAR=date +%Y-%m-%d_%H:%M:%S


*/5 * * * * echo $($DATEVAR) >> ~/Tetrasystems/my_cron_7.log 


0,7,17,27,37,47,57 * * * * echo $($DATEVAR) >> ~/Tetrasystems/cron_timestamp_mytrack.log 
*/7 * * * * ~/backup.sh >/dev/null 2>&1



#*/30 9,10,11,12,13,14,15,16,17 * * * ~/backup.sh >/dev/null 2>&
#*/5 18,19,20,21,22,23,0,1,2 * * * ~/backup.sh >/dev/null 2>&1

