#!/bin/bash

set -e

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein.sh


dein_dir=`pwd`/dein

vimrc=`cat vimrc`
gvimrc=`cat gvimrc`

sh dein.sh ${dein_dir}

vimrc=${vimrc//!PATH!/${dein_dir}}

echo "${vimrc}" > ~/.vimrc
echo "${gvimrc}" > ~/.gvimrc



exit 0
