#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

date +"Present day %Y-%m-%d Present time %H:%M:%S" | figlet -f small -w 110 

nerdfetch -p
