alias s='npm start'
alias e='exit'
alias q='exit'
alias nb='npm run build'
alias c='clear'
alias r='reset'
alias co='code .'
alias gpus='git push'
alias gs='git status'
alias nr='npm run'
alias gb='git branch'
alias gh='/c/Program\ Files\ \(x86\)/GitHub\ CLI/gh.exe'
alias gbr='gh browse'
alias .bashrc-edit='code ~/.bashrc'
alias ..='cd ..'
alias gl='git log'
alias gd='git diff'
alias gch='git checkout'
alias node12='nvm use 12.19.0'
alias node14='nvm use 14.15.5'
alias cdadminpanel='cd /c/Users/Dell/OneDrive/Documents/bspaces-admin--coreui && clear'
alias cdapi-bspaces='cd /c/Users/Dell/OneDrive/Documents/bspaces-api'
alias cos='co . && s'

greeting () {
  echo "Hello $1"
}

# Usage: gac life is amazing.
gac () {
    echo + git add .
    git add .
    
    echo + git commit -m \'$@\'
    git commit -m "$*" # gac life is amazing
}

# Usage: gacp life is super amazing.
gacp () {
    echo + git add .
    git add .
    
    echo + git commit -m \'$@\'
    git commit -m "$*"

    echo + git push
    git push

}
# alias ga='git add .'
# alias gac='git add . && git commit -m \'Update\\''
# alias gcm='git commit -m'
# alias gacp='git add . && git commit -m \'Update\\' && git push'
