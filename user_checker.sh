#!/bin/bash

# you only need the sort and truncate if you want to get a list of users
for i in $(cat /etc/shadow \
	   | awk -F ":" '{ print $1 }' \
	   | sort | tr '\n' ' ';echo
          ); do
	  echo $i
	  su - $i;
done
