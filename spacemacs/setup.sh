
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Dir = ${DIR}"

rm ~/.spacemacs
rm -rf ~/.spacmacs.d
rm -rf ~/.emacs.d

ln -s $DIR/.spacemacs.d/ ~/.spacemacs.d
ln -s $DIR/.emacs.d/ ~/.emacs.d

echo "Done."

