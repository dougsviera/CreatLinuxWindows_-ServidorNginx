# Monitoring the Nginx Server in WSL (Windows Subsystem for Linux)

This project implements an automated monitoring for the Nginx server in an Ubuntu installation on Windows, using WSL (Windows Subsystem for Linux).

## Prerequisites
- Windows 10/11 with WSL installed and Ubuntu 20.04 or higher.
- Active Internet connection to install packages.

## Installation Steps
### 1. Enable WSL
- Run 'wsl --install' in PowerShell with admin permissions.

### 2. Install Ubuntu 20.04 LTS or higher
- Download Ubuntu from the Microsoft Store and complete the initial setup.

### 3. Install and configure Nginx
- Run 'sudo apt update & sudo apt install nginx' and launch Nginx.

### 4. Configure the Monitoring Script
- Create the script 'monitor_nginx.sh' in the directory '~/monitoramento_nginx'.
- Run 'mkdir monitoramento_nginx' and then 'saw monitor_nginx.sh'.
- Add execute permission with 'chmod +x monitor_nginx.sh'. 
- Check the Monitoring Script Log:
    'cat online.log' Displays the log of when Nginx is online;
    'cat offline.log' Displays the log of when Nginx is offline;

### 5. Automate with Cron
- Eddie & Cron in 'Crontab'.
- In cron, schedule the script to run every 5 minutes with '*/5 * * * * ~/monitoramento_nginx/monitor_nginx.sh'.

## Versioning
- Start a Git repository with git init and make frequent commits to versioning the code.
- Optional: Create a remote repository on GitHub or GitLab and push the code.

## Testing
- Stop Nginx with 'sudo systemctl stop nginx' to check if the script registers OFFLINE status.
- Restart Nginx with 'sudo systemctl start nginx' and check the ONLINE status.

## Logs
- The status of the Nginx service is logged in 'online.log' and 'offline.log' in the 'monitoramento_nginx' directory.

