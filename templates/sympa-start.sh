#!/bin/bash

export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/sympa_msg.pid

$HOME/sympa/sbin/sympa check || exit -1
$HOME/sympa/sbin/sympa_msg.pl 2>&1 &
echo $! > $PID
