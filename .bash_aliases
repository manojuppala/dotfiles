#  __ _  ___ ____  ___    (_) __ _____  ___  ___ _/ /__ _
# /  ' \/ _ `/ _ \/ _ \  / / / // / _ \/ _ \/ _ `/ / _ `/
#/_/_/_/\_,_/_//_/\___/_/ /  \_,_/ .__/ .__/\_,_/_/\_,_/ 
#                    |___/      /_/  /_/                 
# website: https://manojuppala.com
# github: https://github.com/manojuppala
# My .bash_aliases, this file consists all my custom aliases.

alias _general_venv="source ~/test/bin/activate"

#to clear terminal
#alias cls="clear"

#to use youtube-dl
alias youtube-dl-mp3="youtube-dl -x  -o '~/Music/mp3/%(title)s.%(ext)s' --audio-format mp3 --prefer-ffmpeg  --embed-thumbnail --add-metadata"

#to set python3 as default python version
alias python=python3

#to activate anaconda base environment in one word
alias base='conda activate base'

#to make a bash script executable
alias bshexe='chmod u+x'

#to manage dotfiles repo using git
alias conf='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# to deactivate and cd while in a workspace
alias empty='deactivate; cd'

#to display images using kitty
alias icat='kitty +kitten icat'

#to display weather status
alias weather='f(){ curl wttr.in/"$@"; unset -f f; }; f'

#to display crypto currency rates
alias crypto='f(){ curl rate.sx/"$@"; unset -f f; }; f'

#to convert text to qrcode
alias qrcode='f(){ curl qrenco.de/"$@"; unset -f f; }; f'

#to get cheatsheets
alias cheat='f(){ curl cheat.sh/"$@"; unset -f f; }; f'

#to shorten urls
alias short='f(){ curl -s https://tinyurl.com/api-create.php\?url\="$@"; unset -f f;}; f'

#to find ip-address, country, city
alias myip='f(){ curl ifconfig.co/"$@"; unset -f f; }; f'

# to get news updates
alias news='f(){ curl getnews.tech/"$@"; unset -f f; }; f'

# dictionary search
alias dict='f(){ curl dict://dict.org/d:"$@"; unset -f f; }; f'

# get covid stats
alias covid='curl snf-878293.vm.okeanos.grnet.gr'

# zoomable world map
alias world_map='telnet mapscii.me'

# get all the links from a webpage 
getlinks() (
curl -s "https://api.hackertarget.com/pagelinks/?q=$1"
)

# document converter
doc_convert() (
curl "http://c.docverter.com/convert" -F from=$1 -F to=$2 -F "input_files[]=@$3" -o "$4"
)

# moon
alias moon='curl http://wttr.in/?format=%m; echo'

# alias vi and vim commands to open nvim
alias vi='nvim'
alias vim='nvim'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'  # 'status' is protected name so using 'stat' instead
alias tag='git tag'
alias newtag='git tag -a'

# Changing "ls" to "exa"
alias ls='exa -l --icons --color=always --group-directories-first'  # my preferred listing
alias la='exa -al --icons --color=always --group-directories-first' # my preferred listing(with dotfiles)
alias ll='exa -a --color=always --group-directories-first'  # all files and dirs(with dotfiles)
alias lx='exa --color=always --group-directories-first'  # all files and dirs
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias lg='exa -l --icons --git --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# flask run
alias flaskrun='export FLASK_APP=flaskapp.py && export FLASK_DEBUG=1 && export FLASK_ENV=development && flask run'

