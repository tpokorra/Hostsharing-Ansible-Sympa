#!/bin/bash

if [ -z "$2" ]
then
    echo "Aufruf: ~/bin/addlist.sh meineliste sympa.example.org"
    echo "   um eine Mailingliste mit der Adresse meineliste@sympa.example.org anzulegen"
    exit 0
fi

listname=$1
domain=$2

domain_escape_dots=${domain//./\\.}
cat >> $HOME/.procmailrc <<FINISH

:0
* ^TO_$listname@$domain_escape_dots
| (cat > $HOME/var/spool/msg/$listname\@$domain_escape_dots.\$TIMESTAMP.00000\,\$RANDINT )
FINISH