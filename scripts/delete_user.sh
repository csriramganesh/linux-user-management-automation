#!/bin/bash

# delete_user.sh — Delete a Linux user


USERNAME="$1"

if id "$USERNAME" &>/dev/null; then
   sudo userdel -r "$USERNAME" 2>/dev/null
    echo "[SUCCESS] User '$USERNAME' has been deleted."
else
    echo "[ERROR] User '$USERNAME' does not exist."
    exit 1
fi
