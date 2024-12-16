#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

#date +"Present day %Y-%m-%d Present time %H:%M:%S" | figlet -f small #-w 110 

#date +"Present day %Y-%m-%d Present time %H:%M:%S" | toilet -f future --filter crop -t -w 36
toilet -f future --filter crop -t Present day
date +"%Y-%m-%d" | toilet -f future --filter crop -t 
toilet -f future --filter crop -t Present time
date +"%H:%M-%S" | toilet -f future --filter crop -t 
toilet -f future --filter crop -t Hahahahahahaha!

alias vi='nvim'
#cat "$HOME/.config/tool/naviASCII"
