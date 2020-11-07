#!/usr/bin/env -S bash -eu

ansible-playbook /workspace/provisioning/site.yml
ansible --module-name shell --args 'op --version' all
ansible --module-name shell --args 'touch /tmp/done' all
