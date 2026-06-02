#!/bin/bash

CSV_FILE="/home/ubuntu/projects/linux-user-management-automation/data/users_list.csv"
DEFAULT_PASSWORD="Change@123"


if [[ ! -f "$CSV_FILE" ]]; then
    echo "ERROR: CSV file not found"
    exit 1
fi

while IFS= read -r username; do

    [[ -z "$username" ]] && continue

    if id "$username" &>/dev/null; then
        echo "SKIP   : User '$username' already exists."
    else
        sudo useradd -m -s /bin/bash "$username"
        echo "$username:$DEFAULT_PASSWORD" | sudo chpasswd
        echo "CREATED: User '$username' created successfully."
    fi

done < "$CSV_FILE"

