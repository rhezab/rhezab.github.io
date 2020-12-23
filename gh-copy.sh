#!/bin/zsh

echo "\nCopying contents of _site to rhezab.github.io \n"

rsync -av ./_site/ ../rhezab.github.io/

echo "\nDone.\n"
