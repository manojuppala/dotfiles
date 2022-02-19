#  __ _  ___ ____  ___    (_) __ _____  ___  ___ _/ /__ _
# /  ' \/ _ `/ _ \/ _ \  / / / // / _ \/ _ \/ _ `/ / _ `/
#/_/_/_/\_,_/_//_/\___/_/ /  \_,_/ .__/ .__/\_,_/_/\_,_/ 
#                    |___/      /_/  /_/                 
# website: https://manojuppala.ml
# github: https://github.com/manojuppala
# My bash config. Not much to see here; just some pretty standard stuff.

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

#SHOPT
# autocorrects cd misspellings
shopt -s cdspell
# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# powerline-shell terminal prompt
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/manoj/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/manoj/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/manoj/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/manoj/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#this line adds color to the text on terminal
export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[00;33m\]\$(git_branch)\[\033[00m\]\$"

#START_KEYS
#START_CUSTOM_KEYS
# bind Ctrl+m to neomutt
bind -x '"\C-g":mutt'

# bind Ctrl+f to ranger file manager
bind -x '"\C-p":ranger'

# bind Ctrl+f to ranger file manager
bind -x '"\C-o":nvim'

# enable case insensitiveness for auto complete
bind "set completion-ignore-case on"

# enable auto complete on tab
bind TAB:menu-complete
#END_CUSTOM_KEYS
#END_KEYS

#default editor
export EDITOR=vim

#donot clear anything, move text out of the screen and place the prompt at the top
cls() (
   if [ "$#" -ne 0 ]; then
      command clear "$@"
      exit
   fi
   h="$(tput lines 2>/dev/null)"
   if [ "$?" -eq 0 ]; then
      until [ "$h" -le 1 ]; do
         printf '\n'
         h=$((h-1))
      done
   fi
   command clear -x
)

# lists all the key bindings if you forget them
# just add START_KEYS and END_KEYS to your config files
kbind() (
    if [[ $1 == 'kitty' ]]; then
        if [[ $2 == '-c' ]]; then
            sed -n '/START_CUSTOM_KEYS/,/END_CUSTOM_KEYS/p'\
                ~/.config/kitty/kitty.conf |\
                GREP_COLOR='01;32' grep -E '^map|#: ';
        elif [[ $2 == '-i' ]]; then
            sed -n '/START_KEYS/,/END_KEYS/p'\
                ~/.config/kitty/kitty.conf |\
                grep '#:     map';
        else
            sed -n '/START_KEYS/,/END_KEYS/p'\
                ~/.config/kitty/kitty.conf |\
                 GREP_COLOR='01;36' grep -E '^map';
        fi
    fi

    if [[ $1 == 'bash' ]]; then
        if [[ $2 == '-c' ]]; then
            sed -n '/START_CUSTOM_KEYS/,/END_CUSTOM_KEYS/p'\
                ~/.bashrc |\
                GREP_COLOR='01;32' grep -E '^bind|# ';
        elif [[ $2 == '-i' ]]; then
            sed -n '/START_KEYS/,/END_KEYS/p'\
                ~/.bashrc |\
                grep '#bind';
        else
            sed -n '/START_KEYS/,/END_KEYS/p'\
                ~/.bashrc |\
                 GREP_COLOR='01;36' grep -E '^bind';
        fi
    fi
        
    if [[ $1 == 'vi' ]]; then
        if [[ $2 == '-c' ]]; then
            sed -n '/START_CUSTOM_KEYS/,/END_CUSTOM_KEYS/p'\
                ~/.config/nvim/init.vim |\
                GREP_COLOR='01;32' grep -E '^map|^nnoremap|^inoremap|^nmap|" ';
        elif [[ $2 == '-i' ]]; then
            sed -n '/START_KEYS/,/END_KEYS/p'\
                ~/.config/nvim/init.vim |\
                grep '^"map|^"nnoremap|^"inoremap|^"nmap';
        else
            sed -n '/START_KEYS/,/END_KEYS/p'\
                ~/.config/nvim/init.vim |\
                 GREP_COLOR='01;36' grep -E '^map|^nnoremap|^inoremap|^nmap';
        fi
    fi

    if [[ $1 == 'xmonad' ]]; then
        if [[ $2 == '-c' ]]; then
            sed -n '/START_CUSTOM_KEYS/,/END_CUSTOM_KEYS/p'\
                ~/.xmonad/xmonad.hs |\
                GREP_COLOR='01;32' grep -E '"mod|"\-\-';
        elif [[ $2 == '-i' ]]; then
            sed -n '/START_KEYS/,/END_KEYS/p'\
                ~/.xmonad/xmonad.hs |\
                grep -E '"mod';
        else
            sed -n '/START_KEYS/,/END_KEYS/p'\
                ~/.xmonad/xmonad.hs |\
                GREP_COLOR='01;36' grep -E '"mod';
        fi
    fi
)

# Activate vi mode with <Escape>:
#set -o vi

#ble.sh adds fish like autocompletion to bash
#source ~/.local/share/blesh/ble.sh

#RUST
. "$HOME/.cargo/env"

#exa color schemes
export LS_COLORS="rs=0:di=01;04;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:\
    *.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:\
    *.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:\
    *.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:\
    *.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:\
    *.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:\
    *.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:\
    *.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.cpp=00;36:*.7z=01;31:*.rz=01;31:*.cab=01;31:\
    *.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.js=00;33:\
    *.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:\
    *.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:\
    *.png=01;35:*.py=00;34:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:\
    *.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:\
    *.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:\
    *.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:\
    *.fli=01;35:*.flv=01;35:*.gl=01;35:*.html=00;31:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:\
    *.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:\
    *.au=00;36:*.flac=00;36:*.m4a=00;36:*.md=00;37:*.mid=00;36:*.midi=00;36:*.mka=00;36:\
    *.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:\
    *.opus=00;36:*.spx=00;36:*.xspf=00;36:"

#print user@hostname and date
echo -e "\e[1;33m$(figlet -c $(whoami)@$(hostname))\e[0m"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
