# Generate the public and private keys locally (in ~/.shh/id_rsa)
ssh-keygen -t rsa

# Display the public key to copy it
cat ~/.ssh/id_rsa.pub

# Create the directory where to copy the public key to the remote computer (connect to the remote machine first with SSH)
mkdir -p ~/.ssh

# Create the file where to paste the public key on the remote computer (connect to the remote machine first with SSH)
vim ~/.ssh/authorized_keys

