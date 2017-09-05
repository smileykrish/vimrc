#!/bin/sh
set -e

cd ~/.vim_config
rm -f autoload/pathogen.vim
cp sources_non_forked/vim-pathogen/autoload/pathogen.vim autoload/pathogen.vim

echo 'set runtimepath+=~/.vim_config

source ~/.vim_config/vimrcs/vimrc.vim
source ~/.vim_config/vimrcs/filetypes.vim
source ~/.vim_config/vimrcs/plugins_config.vim
source ~/.vim_config/vimrcs/extended.vim
source ~/.vim_config/sources_forked/newheader/newheader.vim

try
source ~/.vim_config/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Vim configuration successfully!"
