#!/bin/bash

export HOME=/home/pacs/{{pac}}/users/{{user}}
export PID=$HOME/var/run/wwsympa.pid
export PERL5LIB=$HOME/perl5/lib/perl5/

export sympafcgidir=$HOME/sympa/lib/sympa/cgi
FCGI_CHILDREN=5
FCGI_USER={{pac}}-{{user}}
FCGI_GROUP={{pac}}
#FCGI_OPTS="-s $HOME/var/run/wwsympa.socket -M 0600 -U {{user}}-{{pac}}"
FCGI_OPTS="-p {{sympa_fcgi_port}}"

/usr/bin/spawn-fcgi -F ${FCGI_CHILDREN} -P ${PID} \
    -u ${FCGI_USER} -g ${FCGI_GROUP} ${FCGI_OPTS} -- \
    ${sympafcgidir}/wwsympa.fcgi
