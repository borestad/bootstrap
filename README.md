# bootstrap 
## Codename: "automate the shit out of everything"

Bootstrap setup for my personal server cluster with tons of "virtual" machines with different flavors of hypervisors like VMWare, KVM, Xen, Proxmox, Docker.

## Disclaimer
This account is connected to my sparkleshare account and may not be production ready.

## Generic Usage (May not work at all atm)
Requirements:
- Cold beer or warm coffee

    curl -o /tmp/b.sh https://raw.githubusercontent.com/borestad/bootstrap/master/bootstrap.sh && sh /tmp/b.sh

## Usage with OSX Yosemite
Requirements:
- Xcode from App Store

    curl -o /tmp/b.sh https://raw.githubusercontent.com/borestad/bootstrap/master/os/osx/yosemite/bootstrap.sh && sh /tmp/b.sh

## Usage with CENTOS 7
Requirements:
- yum install gcc

    wget --cache=off https://raw.githubusercontent.com/borestad/bootstrap/master/os/centos/centos7/bootstrap.sh -O - | sh
