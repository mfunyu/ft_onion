#!/bin/bash

service nginx start
service tor start

cat /var/lib/tor/hidden_service/hostname

tail -f /dev/null
