#!/bin/sh

dialog --backtitle "OS selection" \
  --radiolist "Select your workflow:" 15 100 5 \
        1 "OSX Yosemite         -  [ dev @ home ]" off \
        1 "OSX Yosemite         -  [ dev @ work ]" off \
        2 "Centos7 server       -  [ generic ]" off \
        3 "Ubuntu 14.02 server  -  [ generic ]" off \
