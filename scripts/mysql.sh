#!/bin/bash

if [ ! -f /scripts/.mysql_user ]; then
	/scripts/mysql_user.sh
fi

#/etc/init.d/mysql start

exec supervisord -n
