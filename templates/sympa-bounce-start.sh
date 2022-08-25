#!/bin/bash

export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/bounced.pid
export PERL5LIB=$HOME/perl5/lib/perl5/

$HOME/sympa/sbin/bounced.pl 2>&1 &
echo $! > $PID
