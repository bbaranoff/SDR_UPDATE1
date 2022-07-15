#!/bin/bash
echo $#
if [[ $# -ne 1 ]]
then
echo "put a number in internatinal format"
else
sed -i -e "s/callerid=.*/callerid=`echo $1`/g" /etc/asterisk/sip.conf
service asterisk restart
fi
