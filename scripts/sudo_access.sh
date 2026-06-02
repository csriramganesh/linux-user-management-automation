#!/bin/bash

USERNAME=$1

if  id  "$USERNAME" &>/dev/null; then
    sudo usermod -aG sudo "$USERNAME"
    echo "SUCCESS: Sudo access granted to '$USERNAME'."

else
    echo "ERROR: User '$USERNAME' does not exist."

fi
