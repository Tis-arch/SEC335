#!/bin/bash
# This version puts the full output into a text file instead of a standard output.
hostfile=$1
portfile=$2
echo "host,port" > results.txt
for host in $(cat $hostfile); do
  for port in $(cat $portfile); do
    timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null &&
      echo "$host,$port" >> results.txt
  done
done
