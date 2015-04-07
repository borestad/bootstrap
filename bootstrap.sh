#!/bin/sh

echo ""
echo "==== BOOTSTRAP v0.1 ===="
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

function ask_yes_or_no() {
    read -p "$1 ([y]es or [N]o): "
    case $(echo $REPLY | tr '[A-Z]' '[a-z]') in
        y|yes) echo "yes" ;;
        *)     echo "no" ;;
    esac
}

if [[ "no" == $(ask_yes_or_no "Do you want to continue?") || \
      "no" == $(ask_yes_or_no "Are you sure?") ]]
then
    echo ""
    echo "Exiting bootstrap."
    exit 0
fi
