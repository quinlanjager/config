# Aliases
alias vimrc='vi ~/.vimrc'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias mvim='/Applications/MacVim.app/Contents/bin/mvim'
alias vimr='/Applications/VimR.app/Contents/MacOS/VimR'
alias nv='nvim'
alias nve='nvim (fzf)'
alias g='git'
alias gst='git status'
alias fishconf='nvim ~/.config/fish/config.fish'
alias gpu='git push'
alias ga='git add'
alias gc='git commit -v' 
alias gpl='git pull'
alias gco='git checkout'
alias gbr='git branch'
alias gst='git status'
alias copyconf='cp ~/.config/nvim/init.vim ~/.config/fish/config.fish ~/my_config'
alias q-docker-compose 'docker-compose -f q-docker-compose.yml'
alias lld 'll -d */'
source ~/.asdf/asdf.fish
source ~/.asdf/asdf.fish
source ~/.asdf/asdf.fish
set -Ux FZF_DEFAULT_COMMAND "rg --files"
eval (direnv hook fish)
