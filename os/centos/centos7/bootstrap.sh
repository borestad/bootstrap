#!/bin/sh

sudo yum update
sudo yum install wget

echo "Install linuxbrew"
sudo yum groupinstall 'Development Tools' && sudo yum install curl git irb m4 ruby texinfo bzip2-devel curl-devel expat-devel ncurses-devel zlib-devel
