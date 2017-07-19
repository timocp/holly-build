#! /bin/sh
#
# debian's ansible package is too old to use.
# likely things to run manually as root before running this playbook
#   adduser tim
#   apt-get install python-pip sshpass
#   pip install ansible

ansible-playbook -i localhost, main.yml --ask-pass --ask-become-pass
