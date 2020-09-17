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

#######
# Dev #
#######
alias p3='python3'
alias py3='python3'
