#!/bin/bash

# Script: user_creation.sh

USERNAME=$1

# Check if user already exists
if id "$USERNAME" &>/dev/null; then
  echo "User '$USERNAME' already exists."
else
  sudo useradd -m -s /bin/bash "$USERNAME"
  echo "$USERNAME:Admin@1234" | sudo chpasswd
  echo "User '$USERNAME' created successfully!"
fi
