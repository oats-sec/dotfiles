# bash aliases
# include this file in your .bashrc

# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


##############
# networking #
##############
# Netcat listener shortcut `listen <port>`
alias listen='echo "alias: nc -vlnp <port>"; sudo nc -vlnp'

# Python3 HTTP server in current directory `_http <port>`
alias _http='echo "alias: python3 -m http.server <port>"; sudo python3 -m http.server'

# Python3 FTP server in current directory `_ftp`
# Install with: `sudo pip3 install pyftpdlib`
alias _ftp='echo "alias: python3 -m pyftpdlib -w -p 21"; sudo python3 -m pyftpdlib -w -p 21'

# PHP server in current directory `_php`
alias _php='echo "alias: php -S 0.0.0.0:8000";sudo php -S 0.0.0.0:8000'

# Impacket SMB server in current directory `_smb` and `_smb2`
alias _smb='echo "alias: smbserver.py EVILSHARE .";sudo smbserver.py EVILSHARE .'
alias _smb2='echo "alias: smbserver.py EVILSHARE . -smb2support";sudo smbserver.py EVILSHARE . -smb2support'

# Show current interface IP addresses
alias _ip="ip addr | grep inet | grep -e eth -e tun -e wlan -e ppp -e en | awk -F \" \" '{print \$NF, \$2}'"


#################
# Miscellaneous #
#################
alias kthxbye='sudo shutdown now'
alias where='which'
alias lsa='ls -al'
alias sapt='sudo apt'

# Auto archive extraction
# Who can memorize all of those archive commands anyway?
extract () {
    if [ -f "$1" ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf "$1" ;;
            *.tar.gz)    tar xvzf "$1" ;;
            *.tar.xz)    tar xvJf "$1" ;;
            *.bz2)       bunzip2 "$1" ;;
            *.rar)       unrar x "$1" ;;
            *.gz)        gunzip "$1" ;;
            *.tar)       tar xvf "$1" ;;
            *.tbz2)      tar xvjf "$1" ;;
            *.tgz)       tar xvzf "$1" ;;
            *.zip)       unzip "$1" ;;
            *.jar)       unzip "$1" ;;
            *.Z)         uncompress "$1" ;;
            *.7z)        7z x "$1" ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

#######
# Dev #
#######
alias p3='/usr/bin/python3'
alias py3='/usr/bin/python3'
