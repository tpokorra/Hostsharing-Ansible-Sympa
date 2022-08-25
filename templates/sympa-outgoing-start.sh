#!/bin/bash

export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/bulk.pid
export PERL5LIB=$HOME/perl5/lib/perl5/

$HOME/sympa/sbin/bulk.pl 2>&1 &
echo $! > $PID
