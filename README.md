# Setup my new mac for 2018

## Initial
### Run script from Thoughtbot
https://github.com/thoughtbot/laptop
1. curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
### custom installation
2. ln -s ~/mac-config/laptop.local ~/.laptop.local
### Update Mac
3. sh mac 2>&1 | tee ~/laptop.log

## config for diff-so-fancy
https://github.com/so-fancy/diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

## Antigen for ZSH
1. $ ln -s ~/mac-config/zshrc ~/.zshrc
make sure iTerm is using zsh, then close iTerm and open again will automatical update

## vim config is built from scratch!
vim plugin manager switch to vim-plug, it's much simpler.

1. $ ln -s ~/mac-config/vimrc ~/.vimrc 
or neovim
   $ ln -s ~/mac.config/vimrc ~/.config/nvim/init.vim
2. open vim
3. `:PlugInstall` # not necessary for first time

for tmux plugin manager
0. ln -s ~/.vim/tmux.conf ~/.tmux.conf
1. $ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
2. open tmux 
3. `prefix + I` -> install plugin

for ctags (elixir)
0. ln -s ~/.vim/ctags ~/.ctags

