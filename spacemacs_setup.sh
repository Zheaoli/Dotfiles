rm -rf ~/.emacs.d
rm ~/.spacemacs
rm -rf ~/.spacmacs.d

ln -s ~/github/Dotfiles/.spacemacs.d ~/.spacemacs.d

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

emacs
