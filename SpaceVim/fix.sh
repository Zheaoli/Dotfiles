
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Dir = ${DIR}"

rm -rf ~/.SpaceVim.d
ln -s $DIR/.SpaceVim.d ~/.SpaceVim.d

echo "Done."
