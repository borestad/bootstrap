#!/bin/sh

sudo yum update
sudo yum install wget
git clone git@github.com:borestad/bootstrap.git ~/.bootstrap

echo "Install linuxbrew? (Press any key to continue)"
read -r
sudo yum groupinstall 'Development Tools' && sudo yum install -y curl git irb m4 ruby texinfo bzip2-devel curl-devel expat-devel ncurses-devel zlib-devel
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"

echo "Installing PATH to .bash_profile? (Press any key to continue)"
read -r
echo export PATH='~/.linuxbrew/bin:$PATH' >> ~/.bash_profile
source ~/.bash_profile

echo "Running brew doctor (Press any key to continue)"
brew doctor
