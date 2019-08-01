# Aliases
abbr nvimrc='nvim ~/.config/nvim/init.vim'
alias mvim='/Applications/MacVim.app/Contents/bin/mvim'
abbr vimrc='mvim ~/.vimrc'
abbr nv='nvim'
abbr copyconf='cp ~/.config/nvim/init.vim ~/.config/fish/config.fish ~/my_config'
abbr lld 'll -d */'
source ~/.asdf/asdf.fish
set -Ux FZF_DEFAULT_COMMAND "rg --files"
set -gx ERL_AFLAGS "-kernel shell_history enabled"
eval (direnv hook fish)
