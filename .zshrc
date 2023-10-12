FPATH=~/.zsh_site-functions:$FPATH
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

plugins=(
  git
  brew
  zsh-autosuggestions
)

if [ "$TERM_PROGRAM" = tmux ]; then
  tmux-window-name() {
    ($TMUX_PLUGIN_MANAGER_PATH/tmux-window-name/scripts/rename_session_windows.py &)
  }
  add-zsh-hook chpwd tmux-window-name
fi	

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
alias mux='tmux new-session -s "$(basename `pwd`)"'
alias fm='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias 'hist?'='history | cut -c 8- | fzf-tmux -p | tr -d "\n" | pbcopy'
alias fzf="fzf-tmux"
alias dps="docker ps"
alias dcps="docker compose ps"
alias vimdiff="nvim -d"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=nvim
export VISUAL=nvim

eval "$(goenv init -)"

zstyle ':vcs_info:git:*' formats 'on %b'
