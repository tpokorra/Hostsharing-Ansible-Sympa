#!/bin/bash

export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/sympa_msg.pid
export PERL5LIB=$HOME/perl5/lib/perl5/

$HOME/sympa/sbin/sympa check || exit -1
$HOME/sympa/sbin/sympa_msg.pl 2>&1 &
echo $! > $PID
