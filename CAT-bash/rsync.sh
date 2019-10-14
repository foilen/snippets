# Synchronise, updating all files at the end
rsync --delay-updates --delete -zrtv SOURCE_FILE_OR_DIRECTORY TARGET_DIRECTORY
rsync --delay-updates --delete -zrtv /etc/apache2/ /backup/etc/apache2

# Synchronise, updating files right away
rsync --inplace --delete -zrtv SOURCE_FILE_OR_DIRECTORY TARGET_DIRECTORY
rsync --inplace --delete -zrtv /etc/apache2/ /backup/etc/apache2

# Synchronise by SSH, updating all files at the end once all transfered
# Note that you can switch the local and remote parts to copy the other way
rsync --delay-updates --compress-level=9 --delete -zrtve "SSH_PARAMS" HOST_OR_IP:REMOTE_FILE_OR_DIRECTORY LOCAL_DIRECTORY
rsync --delay-updates --compress-level=9 --delete -zrtve "ssh -i /home/user/private.pem -l ec2-user" 192.168.1.1:/etc/apache2/ /backup/etc/apache2
