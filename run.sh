#! /bin/sh
#
# bullseye comes with ansible 2.10.  before running:
#   adduser tim (during installation)
#   apt install ansible sshpass
#   eval $(ssh-agent)       # bash version before first run
#   eval (ssh-agent -c)     # fish (after first run)
#   ssh-add
#   ssh localhost           # once manually to store key in known_host

ansible-playbook -i localhost, main.yml --ask-become-pass
