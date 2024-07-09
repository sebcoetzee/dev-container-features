#!/bin/bash
set -eux

echo "Installing TeXLive: scheme=${SCHEME}"

cd /tmp
curl -L -o install-tl-unx.tar.gz https://mirror.ox.ac.uk/sites/ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar -xzf install-tl-unx.tar.gz
rm install-tl-unx.tar.gz
FOLDER_NAME=$(echo install-tl-*)
VERSION=$(echo $FOLDER_NAME | cut -c 12-)
YEAR=$(echo $FOLDER_NAME | cut -c 12-15)
cd install-tl-$VERSION
perl ./install-tl --no-interaction --scheme=$SCHEME

echo "Installing symlinks..."
for FILENAME in $(find /usr/local/texlive -wholename "/usr/local/texlive/$YEAR/bin/*/*")
do
    ln -s $FILENAME /usr/local/bin/$(basename $FILENAME)
done

cd /tmp
rm -rf install-tl-*