brew install fish
brew install git

# Add vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c "PlugInstall"

fish

# link config files
ln -s ./vimrc ~/.vimrc
ln -s ./config.fish ~/.config/fish/config.fish

# Install omf and get the theme!
curl -L https://get.oh-my.fish | fish
omf install nai
omf theme nai

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.5.1
echo 'source ~/.asdf/asdf.fish' >> ~/.config/fish/config.fish
mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

# Add nodejs plugin
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodjs
