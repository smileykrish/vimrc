#!/bin/sh
set -e

cd ~/.vim_config

echo 'set runtimepath+=~/.vim_config

source ~/.vim_config/vimrcs/vimrc.vim
source ~/.vim_config/vimrcs/filetypes.vim
source ~/.vim_config/vimrcs/plugins_config.vim

try
source ~/.vim_config/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Vim configuration successfully!"
