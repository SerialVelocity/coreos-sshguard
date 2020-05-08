#!/bin/sh

set -eu

BACKEND=${BACKEND:-/usr/lib/x86_64-linux-gnu/sshg-fw-ipset}
LOGREADER=${LOGREADER:-LANG=C /bin/journalctl -afb -p info -n1 -D /var/log/journal -o cat SYSLOG_FACILITY=4 SYSLOG_FACILITY=10}
THRESHOLD=${THRESHOLD:-30}
BLOCK_TIME=${BLOCK_TIME:-120}
DETECTION_TIME=${DETECTION_TIME:-1800}
WHITELIST_FILE=${WHITELIST_FILE:-/etc/sshguard/whitelist}

export BACKEND LOGREADER THRESEHOLD BLOCK_TIME DETECTION_TIME WHITELIST_TIME

exec /usr/sbin/sshguard "$@"
