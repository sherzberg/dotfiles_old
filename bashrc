export EDITOR=vim

# Enable vi mode
set -o vi

# History
export HISTSIZE=1000
export HISTCONTROL=ignoredups:ignorespace
shopt -s histappend

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

for i in ~/dotfiles/bash/exports/*; do
    . $i
done

source ~/dotfiles/bash/colors/gentoo-bash
