#!/bin/bash

read -rp "Enter an IP address: " ip

ip_regex="^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])$"

if [[ $ip =~ $ip_regex ]]; then
    echo "Correct IP connected"
else
    echo "incorrect IP"
fi
