
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Dir = ${DIR}"

rm -rf ~/.SpaceVim
rm -rf ~/.SpaceVim.d

curl -sLf https://spacevim.org/install.sh | bash

ln -s $DIR/.SpaceVim.d ~/.SpaceVim.d

echo "Done."
