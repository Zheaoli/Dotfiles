#!/usr/bin/env bash

help() {
    echo "setup.sh -- setup fvim"
    echo "Usage: setup.sh -i|-u"
    echo "-i -- install fvim"
    echo "-u -- update fvim"
    exit 0
}

color_print() {
    printf '\033[0;31m%s\033[0m\n' "$1"
}

warn() {
    color_print "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

logo() {
    color_print "Thank you for installing fvim!"
    color_print ' _______     _____ __  __ '
    color_print '|  ___\ \   / /_ _|  \/  |'
    color_print '| |_   \ \ / / | || |\/| |'
    color_print '|  _|   \ V /  | || |  | |'
    color_print '|_|      \_/  |___|_|  |_|'
    color_print '                          '
}

require() {
    color_print "Checking requirements for fvim..."
	color_print "Checking Vim version..."
	vim --version | grep -E 7.[3-9]\|8.[0-9] || die "Your vim's version is too low!\nPlease download higher version(7.3+) from http://www.vim.org/download.php"
    color_print "Checking if git exists..."
    which git || die "No git installed!\nPlease install git from http://git-scm.com/downloads/"
    color_print "Check if ctags exists..."
    which ctags || warn "No ctags installed!\nPlease install ctags form http://ctags.sourceforge.net/ after fvim intallation!"
}

install() {
    cd $HOME

    #color_print "Cloning fvim..."
    #rm -rf $HOME/.fvim
    #git clone https://github.com/everettjf/fvim.git $HOME/.fvim

    color_print "Setting fvim vimrc..."
    ln -s $HOME/.fvim/vimrc $HOME/.vimrc

    color_print "Installing vim-plug..."
    mkdir -p ~/.vim/autoload/

    #curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    #or 
    cp ~/.fvim/temp/plug.vim ~/.vim/autoload/plug.vim

    color_print "Installing colortheme..."
    git clone https://github.com/kristijanhusak/vim-hybrid-material.git $HOME/.vim/bundle/vim-hybrid-material
    color_print "Installing plugins using vim-plug..."
    vim +PlugUpdate +qal

    color_print "Installing Python develop dependencies"
    pip install flake8
    pip install yapf

    # config Python syntax checking (flake)
    rm ~/.config/flake8
    ln -s ~/.fvim/flake8 ~/.config/flake8

    color_print "Notice: For Golang develop run :GoInstallBinaries in vim(when .go file is open)"

    color_print "fvim has been installed. Just enjoy vimming!"
}

update() {
    color_print "updating fvim..."
    cd $HOME/.fvim
    git pull origin master
    color_print "updating plugins..."
    if [ -e $HOME/.vimrc ]; then
        vim +PlugClean! +PlugUpdate +qal
    fi
}

if [ $# -ne 1 ]; then
    help
fi

while getopts ":iu" opts; do
    case $opts in
        i)
            logo
            require
            install
            ;;
        u)
            update
            ;;
        :)
            help;;
        ?)
            help;;
    esac
done
