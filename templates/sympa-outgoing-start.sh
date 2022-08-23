#!/bin/bash

export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/bulk.pid

$HOME/sympa/sbin/bulk.pl 2>&1 &
echo $! > $PID
