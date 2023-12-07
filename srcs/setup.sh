#!/bin/bash

service tor nginx
service tor start

cat /var/lib/tor/hidden_service/hostname
