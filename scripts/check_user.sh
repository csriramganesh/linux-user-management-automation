#!/bin/bash

username=$1

if id "$username" &>/dev/null
then
    echo "User $username exists"
else
    echo "User $username does not exist"
fi
