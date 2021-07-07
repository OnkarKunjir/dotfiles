#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export RANGER_LOAD_DEFAULT_RC=FALSE
export PATH=$PATH:~/.local/bin:~/flutter/bin/:~/.config/coc/extensions/coc-clangd-data/install/10.0.0/clangd_10.0.0/bin:~/Android/Sdk/platform-tools

export EDITOR=/usr/bin/nvim
alias vim='nvim'
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias grep='grep --color'
alias grub-update='sudo grub-mkconfig -o /boot/grub/grub.cfg'

shopt -s autocd
shopt -s checkwinsize

#PS1='[\u@\h \W]\$ '
PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]\[$(tput bold)\]"



