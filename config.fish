# Aliases
abbr nvimrc='nvim ~/.config/nvim/init.vim'
alias mvim='/Applications/MacVim.app/Contents/bin/mvim'
abbr vimrc='mvim ~/.vimrc'
abbr vimr='/Applications/VimR.app/Contents/MacOS/VimR'
abbr nv='nvim'
abbr nve='nvim (fzf)'
abbr mve='mvim (fzf)'
abbr g='git'
abbr gst='git status'
abbr fishconf='mvim ~/.config/fish/config.fish'
abbr gp='git push'
abbr ga='git add'
abbr gc='git commit -v'
abbr gpl='git pull'
abbr gco='git checkout'
abbr gbr='git branch'
abbr gst='git status'
abbr copyconf='cp ~/.config/nvim/init.vim ~/.config/fish/config.fish ~/my_config'
abbr lld 'll -d */'
abbr dsf='diff $argv | diff-so-fancy --colors'
abbr dc='docker-compose'
source ~/.asdf/asdf.fish
source ~/.asdf/asdf.fish
source ~/.asdf/asdf.fish
set -Ux FZF_DEFAULT_COMMAND "rg --files"
set -gx ERL_AFLAGS "-kernel shell_history enabled"
eval (direnv hook fish)
