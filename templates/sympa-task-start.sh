#!/bin/bash

export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/task_manager.pid

$HOME/sympa/sbin/task_manager.pl 2>&1 &
echo $! > $PID
