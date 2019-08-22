# Aliases
abbr nvimrc='nvim ~/.config/nvim/init.vim'
abbr nv='nvim'
abbr copyconf='cp ~/.config/nvim/init.vim ~/.config/fish/config.fish ~/my_config'
abbr lld 'll -d */'
abbr dsf='diff $argv | diff-so-fancy --colors'
source ~/.asdf/asdf.fish
set -Ux FZF_DEFAULT_COMMAND "rg --files"
set -gx ERL_AFLAGS "-kernel shell_history enabled"
set PATH /Users/quinlan/.cache/rebar3/bin/ /Applications/MacVim.app/Contents/bin $PATH
eval (direnv hook fish)
