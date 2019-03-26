#!/bin/bash

echo "> tmux installation process started ..."

# install TMUX PLUGIN MANAGER
# TPM is used to help us to easier install plugins for tmux
#
# some commandsi (prefix === Ctrl+a):
#   prefix + I          - install new plugins defined inside .tmux.conf file and reload tmux env
#
#   prefix + U          - update installed plugins
#
#   prefix + alt + u    - remove/uninstall plugins
#
# some of plugins I'm using are:
# - tmux-resurrect (https://github.com/tmux-plugins/tmux-resurrect)
# - tmux-continuum (https://github.com/tmux-plugins/tmux-continuum)

TMUX_DIR=$HOME/.tmux
git clone https://github.com/tmux-plugins/tpm $TMUX_DIR/plugins/tpm

echo "> move tmux.conf file to user home directory ..."

mv $TMUX_DIR/tmux.conf $HOME/.tmux.conf
chmod +x ~/.tmux/install.sh

echo "> tmux installlation process successfully finished!"

echo "********************************************************************************************"
echo "INFO: start new tmux session and then press [tmux prefix - Ctrl+a] + I to reload tmux config
      and install new plugins defined inside ~/.tmux.conf file!"
echo "********************************************************************************************"
