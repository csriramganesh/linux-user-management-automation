# Linux User Management Automation
A DevOps portfolio project built using Bash scripting to automate Linux user management tasks.

---

## Feature 1: User Existence Check
This script checks whether a Linux user exists on the system.

### Usage
```bash
./scripts/check_user.sh username
```

Example:
```bash
./scripts/check_user.sh root
```

---

## Script Code
![User Check Script](screenshots/feature-01-user-check/07-check-user-script-code.png)

---

## Existing User Test
The script successfully identifies an existing Linux user.
![Existing User Test](screenshots/feature-01-user-check/09-existing-user-test.png)

---

## Non-Existing User Test
The script correctly handles a user that does not exist.
![Non Existing User Test](screenshots/feature-01-user-check/10-nonexisting-user-test.png)

---

## Git Workflow
### Staging Files
![Git Add](screenshots/feature-01-user-check/12-git-add-staged-files.png)
### First Commit
![Git Commit](screenshots/feature-01-user-check/13-first-commit-success.png)
### Push to GitHub
![Git Push](screenshots/feature-01-user-check/14-git-push-success.png)

---

## Repository Published on GitHub
![GitHub Repository](screenshots/feature-01-user-check/15-github-first-feature-published.png)

---

## Feature 2: User Creation
This script creates a new Linux user with a home directory and sets a default password.

### Usage
```bash
sudo bash scripts/user_create.sh username
```

Example:
```bash
sudo bash scripts/user_create.sh john
```

---

## Script Code
![User Creation Script](screenshots/feature-02-create-user/user_creation_script.png)

---

## User Creation Test
Successfully creates a new user and handles duplicate user case.
![User Creation Test](screenshots/feature-02-create-user/user_creation_success_exists.png)

---
## Feature 03 — Delete User

**Script:** `scripts/delete_user.sh`

**Usage:**
```bash
sudo bash scripts/delete_user.sh <username>
```

**What it does:**
- Checks if the user exists before attempting deletion
- Removes the user along with their home directory
- Shows clear success or error messages

![Delete User Script](screenshots/feature-03-delete-user/delete_user_script.png)
![Delete User Success](screenshots/feature-03-delete-user/User_deletion_success.png)


## Skills Practiced
* Bash Scripting
* Linux User Management
* Conditional Statements
* Linux Commands (id, useradd, chpasswd, userdel)
* File Permissions
* Git
* GitHub
* DevOps Fundamentals

---

## Repository Structure

```text
linux-user-management-automation
├── README.md
├── scripts
│   ├── check_user.sh
│   ├── user_create.sh
│   └── delete_user.sh
└── screenshots
    ├── feature-01-user-check
    ├── feature-02-create-user
    └── feature-03-delete-user
```
