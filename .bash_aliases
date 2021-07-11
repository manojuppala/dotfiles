alias _general_venv="source ~/test/bin/activate"

#alias to clear terminal
alias cls="clear"

#alias to use youtube-dl
alias youtube-dl-mp3="youtube-dl -x  -o '~/Music/mp3/%(title)s.%(ext)s' --audio-format mp3 --prefer-ffmpeg  --embed-thumbnail --add-metadata"

#to activate anaconda base environment in one word
alias base='conda activate base'

#to make a bash script executable
alias bshexe='chmod u+x'

#to manage dotfiles repo using git
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# to deactivate and cd while in a workspace
alias empty='deactivate; cd'

#to display images using kitty
alias icat='kitty +kitten icat'

#to display weather status
alias weather='curl wttr.in'

#to display crypto currency rates
alias crypto='curl rate.sx/'

#to convert text to qrcode
alias qrcode='curl qrenco.de/'
