#!/bin/bash

>&2 echo "$(cat /users | grep '#' )"
cat /users | grep -v '#' | sort | uniq | awk '{print $1}' | while read user
do
    pw="$(pwgen)"
    >&2 echo "$user :: $pw"
    htpasswd -nb "$user" "$pw";
done
