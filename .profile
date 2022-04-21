#  __ _  ___ ____  ___    (_) __ _____  ___  ___ _/ /__ _
# /  ' \/ _ `/ _ \/ _ \  / / / // / _ \/ _ \/ _ `/ / _ `/
#/_/_/_/\_,_/_//_/\___/_/ /  \_,_/ .__/ .__/\_,_/_/\_,_/ 
#                    |___/      /_/  /_/                 
# website: https://manojuppala.com
# github: https://github.com/manojuppala
# My .profile Not much to see here; just some pretty standard stuff.

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
. "$HOME/.cargo/env"

export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTIGNORE="pwd:df:du:cls:clear:date:exit"
export HISTCONTROL=ignoredups
