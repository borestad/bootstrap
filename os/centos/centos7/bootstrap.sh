#!/bin/sh

sudo yum update
sudo yum install wget

echo "Install linuxbrew"
sudo yum groupinstall 'Development Tools' && sudo yum install -y curl git irb m4 ruby texinfo bzip2-devel curl-devel expat-devel ncurses-devel zlib-devel
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
brew doctor
