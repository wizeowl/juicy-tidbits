#!/bin/bash

die () {
    echo >&2 "$@"
    exit 1
}

validator() {
  printf "* %-48s" "$1"
  echo "$1" | egrep --quiet "^([A-Za-z]+[A-Za-z0-9]*((\.|\-|\_)?[A-Za-z]+[A-Za-z0-9]*){1,})@(([A-Za-z]+[A-Za-z0-9]*)+((\.|\-|\_)?([A-Za-z]+[A-Za-z0-9]*)+){1,})+\.([A-Za-z]{2,})+"
  [ $? -eq 0 ] && printf "\e[1;32m[pass]\e[m" || die "First argument must be a valid email"
  echo
}

[ "$#" -eq 2 ] || die "Please provide an email and id_rsa path (2 arguments required, $# provided)"
validator $1

ssh-keygen -t rsa -b 4096 -C $1 -T $2
chmod 400 $2
ssh-add $2


