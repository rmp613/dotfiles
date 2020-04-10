#!/bin/zsh

# https://askubuntu.com/questions/25077/how-to-really-clear-the-terminal
alias clear="tput reset"

# https://github.com/sharkdp/fd
if [ -e "fdfind" ]; then
	alias fd=fdfind
fi

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"

# xdg-open
alias open="xdg-open &>/dev/null"