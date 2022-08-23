#!/bin/bash

export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/bounced.pid

$HOME/sympa/sbin/bounced.pl 2>&1 &
echo $! > $PID
