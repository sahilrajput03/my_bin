alias s='npm start'
alias e='exit'
alias q='exit'
alias nb='npm run build'
alias c='clear'
alias r='reset'
alias co='code .'
alias gpus='git push'
alias gs='git status'
# alias ga='git add .'
# alias gcm='git commit -m'
alias nr='npm run'
alias gb='git branch'
# alias gac='git add . && git commit -m \'Update\\''
# alias gacp='git add . && git commit -m \'Update\\' && git push'
alias gh='/c/Program\ Files\ \(x86\)/GitHub\ CLI/gh.exe'
alias gbr='gh browse'
alias .bashrc-edit='code ~/.bashrc'
alias ..='cd ..'
alias gl='git log'
alias gd='git diff'

greeting () {
  echo "Hello $1"
}

gac () {
    echo + git add .
    git add .
    
    echo + git commit -m \'$@\'
    git commit -m "$*" # gac life is amazing
}

gacp () {
    echo + git add .
    git add .
    
    echo + git commit -m \'$@\'
    git commit -m "$*" # gac life is amazing

    echo + git push
    git push

}
