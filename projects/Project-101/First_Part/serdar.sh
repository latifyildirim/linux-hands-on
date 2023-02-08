#!/bin/bash

grep -i 0c127ab5cdf997cf4 event_history.csv | grep -i Terminate | egrep -o 'i-[[:xdigit:]]+' | sort | uniq >  ./result.txt
grep -i privatIp event_history.csv | grep -i Terminate | egrep -o 'i-[[:xdigit:]]+' | sort | uniq >  ./result.txt