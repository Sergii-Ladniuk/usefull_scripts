hg_branch() {
    hg branch 2> /dev/null | awk '{print $1}'
}

git_branch() {
    git branch 2> /dev/null | awk '{print $1}'
}

export PS1='\u@\h:\[\e[32;1m\]\w\[\033[m\] \[\033[1;31m\]$(git_branch)\[\033[m\] $'

