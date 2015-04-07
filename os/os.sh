#!/bin/sh
# Manual: http://www.freebsd.org/cgi/man.cgi?query=dialog&sektion=1&n=1

dialog --backtitle "OS selection" \
  --radiolist "Select your workflow:" 15 100 5 \
        1 "OSX Yosemite         -  [ dev @ home ]" off \
        1 "OSX Yosemite         -  [ dev @ work ]" off \
        2 "Centos7 server       -  [ generic ]" off \
        3 "Ubuntu 14.02 server  -  [ generic ]" off \
