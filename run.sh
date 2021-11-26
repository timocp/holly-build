#! /bin/sh
#
# bullseye comes with ansible 2.10.  before running:
#   adduser tim (during installation)
#   apt install ansible sshpass
#   ssh localhost     # once manually to store key in known_host

ansible-playbook -i localhost, main.yml --ask-pass --ask-become-pass
