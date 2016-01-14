
USERNAME=`cat USERNAME`
PUBKEY=`cat PUBKEY`

sudo adduser $USERNAME

sudo cat >> /etc/sudoers << __SUDOERS
${USERNAME} ALL=(ALL) NOPASSWD: ALL
__SUDOERS

sudo mkdir -p /home/$USERNAME/.ssh
sudo cat >> /home/$USERNAME/.ssh/authorized_keys << __PUBKEYS
${PUBKEY}
__PUBKEYS
