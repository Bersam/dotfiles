# fish path {{{
set -x FISH ~/.config/fish
# }}}
# binary files are here {{{
set -x PATH ~/dotfiles/bin
set -x PATH $PATH ~/dotfiles/bin/local
set -x PATH $PATH /usr/local/bin
set -x PATH $PATH /usr/bin
set -x PATH $PATH /bin
set -x PATH $PATH /usr/sbin
set -x PATH $PATH /sbin
set -x PATH $PATH /home/bersam/ADT/sdk/platform-tools
set -x PATH $PATH /home/bersam/ADT/sdk/tools
set -x PATH $PATH /home/bersam/ADT/ndk
set -x PATH $PATH /home/bersam/.gem/ruby/2.0.0/bin
# }}}
# ENV variables{{{
setenv EDITOR vim
setenv ANDROID_HOME /home/bersam/ADT/sdk
# }}}
# bin path in home {{{
set -x HOME_BIN_PATH ~/bin
# }}}
# alias {{{
# sudo
alias s='sudo'
alias yum='sudo yum'
alias apt-get='sudo apt-get'
alias pacman='sudo pacman'
alias service='sudo service'
alias systemctl='sudo systemctl'
alias swapoff='sudo swapoff'
alias swapon='sudo swapon'
# python
alias p2='python2'
alias p3='python3'
# vim
alias vi='vim'
# wget
alias wget='wget -c'
# windows
alias windows='sudo ntpd -qg; sudo hwclock -w'
# }}}
