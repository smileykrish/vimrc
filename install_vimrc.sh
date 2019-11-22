#!/bin/sh
set -e

echo '
source ~/.vim_config/vimrcs/Vundle.vim
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
