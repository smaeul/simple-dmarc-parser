#!/bin/bash

output=$(simple-dmarc-parser --config /etc/simple-dmarc-parser.conf)

if [ -z "$output" ]; then
    echo "$output" | mail -s "Automatic DMARC Summary" root
fi