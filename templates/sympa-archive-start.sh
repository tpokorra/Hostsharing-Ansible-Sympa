#!/bin/bash

export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/archived.pid

$HOME/sympa/sbin/archived.pl 2>&1 &
echo $! > $PID
