##
## Aliases
##

alias hostit= 'python3 -m http.server -d ~/Documents/tools 80'
alias sudo='sudo -v; [ $? ] && sudo '
alias htbon='openvpn <PATH/TO/HTB/OVPN/FILE>1>/dev/null &' 
alias thmon='openvpn <PATH/TO/THM/OVPN/FILE>1>/dev/null &' 
alias kvpn='pkill openvpn'
alias c="clear"
alias q="exit"
alias mtar='tar -zcvf' # mtar <archive_compress>
alias utar='tar -zxvf' # utar <archive_decompress> <file_list>
alias z='zip -r' # z <archive_compress> <file_list>
alias uz='unzip' # uz <archive_decompress> -d <dir>
alias sr='source ~/.config/zsh/env.zsh'
alias ..="cd .."
alias ls="exa --color=auto --icons"
alias l="ls -l"
alias la="ls -a"
alias ll="ls -la"
alias lt="ls --tree"
alias cat="bat --color always --plain"
alias grep='grep --color=auto'
alias mv='mv -v'
alias cp='cp -vr'
alias rm='rm -vr'
alias gcl='git clone'



# vim:ft=zsh
