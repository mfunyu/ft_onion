#!/bin/bash

service nginx start
service tor start
service ssh start

cat /var/lib/tor/hidden_service/hostname

tail -f /var/log/tor/notices.log

