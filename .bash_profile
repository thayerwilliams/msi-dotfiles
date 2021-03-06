# ~/.bash_profile
# Thayer Williams - http://cinderwick.ca

# start keychain, feed it keys and source the results
/usr/bin/keychain -Q -q ~/.ssh/id_rsa < /dev/null
[ -f $HOME/.keychain/$HOSTNAME-sh ] && source $HOME/.keychain/$HOSTNAME-sh

# source bashrc
[ -f $HOME/.bashrc ] && source $HOME/.bashrc

# auto startx if logging in at VC/1
if [ -z "$DISPLAY" ] && [ $(tty) = /dev/tty1 ]; then
	exec xinit >& ~/.myXLog
fi
