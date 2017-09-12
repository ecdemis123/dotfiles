#git aware (shows branch name)
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\[$bakpur\]\[$txtblk\]\u\[$txtrst\]@\[$txtblu\]\h \[$txtrst\]\W \[$txtpur\]\$git_branch\[$txtblu\]\$git_dirty\[$txtrst\]\$ "
# export PS1="\[\033[38;5;33m\]\]\u\[\033[38;5;69m\]\] @\[\033[38;5;105m\]\] \h\[\033[38;5;141m\]\] \W\[\033[38;5;177m\]\] $git_branch\[\033[38;5;213m\]\]$git_dirty\[\033[m\] $ "
# export PS1="\[\033[38;5;33m\]\u\[\033[m"

#git tab completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

#CLI colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

#prompt colors
#export PS1="\e[0;35\u@\h \w \[\]$git_branch\[\]$git_dirty\[\]$\e[m"

[[ -s ~/.bashrc ]] && source ~/.bashrc
export PATH="$PATH:/Applications/vault"

eval "$(rbenv init -)"
export PATH=~/.local/bin:$PATH
