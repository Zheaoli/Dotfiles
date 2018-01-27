
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Dir = ${DIR}"

rm -rf ~/.fvim

ln -s $DIR/.fvim ~/.fvim

bash ~/.fvim/setup.sh -i

echo "Done."
