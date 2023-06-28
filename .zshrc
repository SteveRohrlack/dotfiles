plugins=(git docker zsh-autosuggestions)

alias ll='ls -lisahG'
alias ..='cd ..'
alias weather='curl https://wttr.in/Dresden'
alias whatsmyip='curl ipecho.net/plain ; echo'
alias gs='git status'
alias 'ssh?'='history | grep "ssh " | grep @ | grep -v "history"'
alias json-pretty='python -m json.tool'
alias myhosts='sudo vim /etc/hosts'
alias brew-check='brew update && echo "---outdated---" && brew outdated'
alias vim='nvim'
alias agenda='icalBuddy -f -sc eventsToday'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=nvim
export VISUAL=nvim

eval "$(op completion zsh)"; compdef _op op

autoload -U +X bashcompinit
zstyle ':vcs_info:git:*' formats 'on %b'
