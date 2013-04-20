# Connect to a remote machine with a password
ssh USER@HOST_OR_IP
ssh ec2-user@192.168.1.1

# Connect to a remote machine without a password 
ssh -i PATH_TO_PRIVATE_KEY USER@HOST_OR_IP
ssh -i /home/user/private.pem ec2-user@192.168.1.1

# Connect to a remote machine without a password on the 2221 port
ssh -p 2221 -i PATH_TO_PRIVATE_KEY USER@HOST_OR_IP
ssh -p 2221 -i /home/user/private.pem ec2-user@192.168.1.1

# Execute command
ssh USER@HOST_OR_IP COMMAND
ssh ec2-user@192.168.1.1 'echo hello'

# Copy a file
# Note that you can switch the local and remote parts to copy the other way
scp LOCAL_FILE USER@HOST_OR_IP:REMOTE_FILE_OR_DIRECTORY
scp httpd.conf ec2-user@192.168.1.1:/etc/apache2/

# Copy a file to a remote machine without a password on the 2221 port
# Note that the -P is in capital letter for scp
scp -P 2221 -i PATH_TO_PRIVATE_KEY LOCAL_FILE USER@HOST_OR_IP:REMOTE_FILE_OR_DIRECTORY
scp -P 2221 -i /home/user/private.pem httpd.conf ec2-user@192.168.1.1:/etc/apache2/

# Redirect a port through SSH
ssh -L LOCAL_PORT:REMOTE_HOST:REMOTE_PORT HOST_OR_IP
ssh -L 80:www.google.com:80 192.168.0.113
