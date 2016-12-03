#! /bin/sh

ansible-playbook -i holly, main.yml --ask-pass --ask-become-pass
