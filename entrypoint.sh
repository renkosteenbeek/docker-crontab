#!/bin/sh

# set config file
/usr/bin/crontab /crontab.txt

# start cron
/usr/sbin/crond -f -l 8