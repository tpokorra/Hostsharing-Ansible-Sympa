#!/bin/bash

export HOME=/home/pacs/{{pac}}/users/{{user}}
export PERL5LIB=$HOME/perl5/lib/perl5/

$HOME/sympa/sbin/archived.pl 2>&1 &
