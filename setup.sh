# Variables
$USER_NAME=archie
$HOME=/home/$USER_NAME

# Update the system
apt-get update
apt-get upgrade
apt-get clean

# Install the required barebones software
apt-get install matchbox-keyboard
apt-get install vim
apt-get install zsh

# Add a new user
adduser $USER_NAME

# Make vim the default text editor
update-alternatives --set editor /usr/bin/vim.tiny

# Make zsh the default for shell
chsh -s $(which zsh)

# Lay out the foundations of SSH 
mkdir $HOME/.ssh
chmod 700 $HOME/.ssh
touch $HOME.ssh/authorized_keys
chmod 600 $HOME/`.ssh/authorized_keys

# Modify SSH for security


# Restart SSH so that the changes are acknowledged
service ssh restart

# Setup my environment
