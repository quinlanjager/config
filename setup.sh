sudo apt-get update

brew install fish
brew install git
brew install fzf
brew install ripgrep
brew install bat
brew install direnv
brew install asdf

# link config files
ln ./vimrc ~/.vimrc
ln ./config.fish ~/.config/fish/config.fish

# Install omf and get the theme!
curl -L https://get.oh-my.fish | fish
omf install l
omf theme l

# Add asdf to fish config
echo 'source ~/.asdf/asdf.fish' >> ~/.config/fish/config.fish
mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

# Add nodejs plugin
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs

npm install -g diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

# Add vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c "PlugInstall"



