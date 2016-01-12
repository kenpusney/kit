
USERNAME='<YOUR USERNAME>'
PUBKEY='<YOUR PUBKEY>'

adduser $USERNAME

cat >> /etc/sudoers << __SUDOERS
${USERNAME} ALL=(ALL) NOPASSWD: ALL
__SUDOERS

mkdir -p /home/$USERNAME/.ssh
cat >> /home/$USERNAME/.ssh/authorized_keys << __PUBKEYS
${PUBKEY}
__PUBKEYS

