#! /bin/sh
#
# debian's ansible package is too old to use.
# even after upgrading to stretch, which comes with 2.2 but i'm using 2.3.
# likely things to run manually as root before running this playbook
#   adduser tim
#   apt-get install python-pip sshpass
#   pip install ansible
#   pip install paramiko

ansible-playbook -i localhost, main.yml --ask-pass --ask-become-pass
