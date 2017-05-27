#!/bin/sh

journalctl -D /var/log/journal --no-pager -n0 -xfq -t sshd | /usr/sbin/sshguard "$@"
