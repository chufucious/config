# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


alias sub='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl' 
alias vi=vim
alias top='top -a -u'
alias ll='ls -al'
alias resource='source ~/.bash_profile && echo "Done!"'
alias cur="parse_git_branch | sed -e 's/(//g' | sed -e 's/)//g' | tr -d '\n' | pbcopy"
alias cdandroid='cd /Users/eric/projects/current-android/current/src/main/res'
alias cdios='cd /Users/eric/projects/capturelive-ios-assets/assets'

## Git commands
alias log='git log'
alias diff='git diff'
alias branch='git branch'
alias st='git status'

# source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
