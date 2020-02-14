#!/usr/bin/env sh

# setup script to install texlive and add to path
texlive_year="2019"

# update package and install dependence
sudo apt-get -qq update
sudo apt-get install -qy python-pygments python3-pygments python-sphinx python3-sphinx

export PATH=/tmp/texlive/bin/x86_64-linux:$PATH

if ! command -v pdflatex > /dev/null; then
    echo "==> Texlive not installed"
    echo "==> Downloading texlive and installing"
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
    tar -xzf install-tl-unx.tar.gz
    ./install-tl-*/install-tl --profile=./utilities/texlive.profile
    echo "==> Finished install TexLive"
fi

# update texlive
echo "==> Now updating TexLive"
tlmgr option -- autobackup 0
tlmgr update --self --all --no-auto-install
echo "==> Finished updating TexLive"