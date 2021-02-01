autoload -U compinit
compinit -i

# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
# autoload -Uz compinit && compinit

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
# GIT_PS1_SHOWUNTRACKEDFILES=false
# GIT_PS1_SHOWSTASHSTATE=false
# GIT_PS1_SHOWUPSTREAM=auto

# プロンプトの表示設定
setopt PROMPT_SUBST ; PS1='%F{white}[%*]%f%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '

# alias
alias ll='ls -lhG'
alias cdd='cd ~/Desktop'
alias cdg='cd ~/git'
alias gitc='git clone'
alias gitp='git pull'
alias gitf='git fetch'

function catj() {
  cat $1 | jq
}


function adbscreen() {
  adb shell screencap -p /sdcard/screen.png
  adb pull /sdcard/screen.png
  adb shell rm /sdcard/screen.png
}

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion