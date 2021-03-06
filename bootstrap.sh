#!/bin/sh

echo ""
echo "==== BOOTSTRAP v0.1.001 ===="
echo ""
echo "Johan Borestad | 2015"
echo "https://github.com/borestad/bootstrap"
echo ""

echo "This is a bootstrap script that will help you setup your machine from scratch."
echo "It is tested on OSX/Ubuntu/Centos and is meant for my personal setup, both client and server side."
echo "The script will build an initial machine state thay may be cloned or used as a boilerplate."

echo ""
echo "==== DISCLAIMER ===="
echo ""
echo "Any use of these scripts and tools is at your own risk."
echo "There is no guarantee that they have been through thorough testing in a comparable environment."
echo "I am not responsible for any damage or data loss incurred with their use."

echo ""
echo "==== SETUP ===="
echo ""

echo ""
echo "Install & compile bootstrap dependencies?  (y/n)"
read -r response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
  echo "Creating bootstrap config folder [ ~/.bootstrap ]"
  mkdir -p ~/.bootstrap/tmp

  cd ~/.bootstrap/tmp
  curl -OL https://github.com/borestad/bootstrap/raw/master/packages/dialog-1.2-20130928.tgz
  tar -xvf ./dialog-1.2-20130928.tgz
  cd dialog-1.2-20130928
  ./configure --disable-debug --disable-dependency-tracking
  sudo make install


  dialog --title 'Congratulations' --msgbox 'Bootstrap was successfully installed' 10 50

else
  echo ""
  echo "Exiting bootstrap."
  exit 0
fi


# echo ""
# echo "Available workflows:"

# echo "curl -fsSL https://raw.githubusercontent.com/borestad/bootstrap/master/os/centos/centos7/bootstrap.sh | sh"
# echo "curl -fsSL https://raw.githubusercontent.com/borestad/bootstrap/master/os/osx/yosemite/bootstrap.sh | sh"
# echo "curl -fsSL https://raw.githubusercontent.com/borestad/bootstrap/master/os/ubuntu/ubuntu-14.04.2-server/bootstrap.sh | sh"





