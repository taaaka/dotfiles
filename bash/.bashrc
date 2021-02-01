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
