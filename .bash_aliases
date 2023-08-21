alias diff='diff --color=auto'
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias co='compress'
alias cp='cp -i'
alias mroe='more'
alias mv='mv -i'
alias uc='uncompress'
alias ..='cd ..'
alias ...='cd ../../../'
alias .5='cd ../../../../.. '
alias fuck='thefuck'
alias vi='vim'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# Add an "alert" alias for long running commands.  Use like so:
alias betty="/home/masonhsieh/betty/main.rb"
alias music="ncmpcpp"
alias clock="ncmpcpp -s clock"
alias visualizer="ncmpcpp -s visualizer"
alias news="newsbeuter"
alias email="mutt"
alias files="ranger"
alias audio="ncpamixer"
alias calender="calcurse"
alias ka="killall"
alias sv="sudo vim"
alias r="ranger"
alias ls='ls -hN --color=auto --group-directories-first'
alias g="git"
alias gitup="git push origin master"
alias mkdir="mkdir -pv"
alias crep="grep --color=always"
alias p="sudo pacman"
alias sdn="sudo shutdown now"
alias yt="youtube-dl -ic"
alias yta="youtube-dl -xic"
alias starwars="telnet towel.blinkenlights.nl"
alias nf="clear && neofetch"
alias terminix="tilix"
alias gpg=gpg2

# alias for RISC-V tool
# alias pk="/usr/riscv64-linux-gnu/bin/pk"

# alias volume="ncpamixer"

#tmux
alias tmuxkillt="tmux kill-session -t"
alias tmuxattach="tmux attach"
alias gitlog="git log --graph --pretty=oneline --abbrev-commit"
alias vbrc="vim ~/.bashrc.private"
alias vvrc="vim ~/.vimrc"
alias vtconf="vim ~/.tmux.conf.local"
alias ranger="python3 ~/ranger/ranger.py"
alias gitgrep="git grep -n"
alias tmuxrename="tmux rename-window -t"
alias vep2conf="/local/masonarc/AndeSight/AndeSight/sid/ins/vep2conf"
alias so="source"

#Docker
dockerkillcontainer() {
    docker stop $@ && docker rm $@
}

dockerkillcontainerbyimage() {
    image=$@
    docker ps -a -q  --filter ancestor=$image
    docker rm $(docker stop $(docker ps -a -q --filter ancestor=$image --format="{{.ID}}"))
}

dockerattach() {
    docker exec -u $1 -it $2 bash
}
