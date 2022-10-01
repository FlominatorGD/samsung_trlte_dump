
# for assambly

on init-recovery
	mount -f /system
	
	mount -f /cache
	ls /cache/recovery/	

	mkdir -f root root 0775 /system/recovery
	touch -f /system/recovery/history
	echo "+" >> /system/recovery/history
	cat -f /cache/recovery/command >> /system/recovery/history
	
	
	mount /data
	cp -y -f -v -f /cache/recovery/last_recovery /tmp/recovery_old.log


on post-recovery
	mount -f /cache
	mount -f /system
	mount -f /data	

	mkdir -f system cache 0775 /cache/recovery	
	mkdir -f system log 0775 /data/log	

	echo "-" >> /system/recovery/history
	cp -y -f -v /system/recovery/history /cache/recovery/last_history
	cp -y -f -v /system/recovery/history /data/log/recovery_history.txt

on recovery-out
	mount /data
	mkdir system log 0775 /data/log	
