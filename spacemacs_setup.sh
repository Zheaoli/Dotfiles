
rm ~/.spacemacs
rm -rf ~/.spacmacs.d
rm -rf ~/.emacs.d


ln -s ~/github/Dotfiles/.spacemacs.d/ ~/.spacemacs.d
ln -s ~/github/Dotfiles/spacemacs/ ~/.emacs.d

# fix error
rm ~/github/Dotfiles/.spacemacs.d/.spacemacs.d
rm ~/github/Dotfiles/spacemacs/.emacs.d

