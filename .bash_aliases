alias bas='vim ~/dotfiles/.bash_aliases'
alias bass='source ~/.bash_aliases'
alias cmd='cmd.exe /C $1'
alias git='cmd git'
alias ant='cmd ant'
alias py='cmd python'
alias ls='exa -lFahm --no-permissions --no-user --sort=type'

alias cds='cd /mnt/c/Src'
alias cdr='cd /mnt/c/SrcResearch'
alias cdsqs='cd /mnt/c/Src/Lib/QuickScan'
alias cdrqs='cd /mnt/c/SrcResearch/Lib/QuickScan'
alias cda='cd /mnt/c/Users/abricq'
alias cdd='cd /mnt/c/Users/abricq/dev'
alias cdrust='cd ~/dev/rust/aoc'

alias gpref='git push origin HEAD:refs/for/master'
alias gl='glo -n5'
alias gll='git log --oneline origin/master~1..head'
alias gcm='git commit -m '

alias ydiff='python3 ~/bin/ydiff.py'

export BAT_THEME="Solarized (light)"

export PATH=$PATH:/home/abricq/dotfiles
export PATH=$PATH:/home/abricq/dev/oberon/voc/install/bin

# aliases for C++ dev
alias mapping='/mnt/c/SrcResearch/Lib/QuickScan/cmake-build-release/MappingApp/Release/MappingApp.exe'
alias fea='/mnt/c/SrcResearch/Lib/QuickScan/cmake-build-release/FeatureExtractorApp/Release/FeatureExtractorApp.exe'

# alias for Java ev
alias antserver='cd /mnt/c/Src/App/WMS/wms && cmd ant run'
alias antmonitor='cd /mnt/c/Src/App/WMS/monitor2 && cmd npm run start'
