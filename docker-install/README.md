# Docker Installation Scripts

This repository contains installation scripts for Docker on various Linux distributions. You can use these scripts to quickly install Docker on your system.

## Repository Structure


- `ubuntu-docker-install.sh`: Script for installing Docker on Ubuntu-based systems.
- `centos-docker-install.sh`: Script for installing Docker on CentOS/Red Hat-based systems.

## Requirements

Before running the installation scripts, make sure your system meets the following requirements:

- A supported Linux distribution (Ubuntu or CentOS/Red Hat).
- Sudo privileges.

## Installation Instructions

### 1. For Ubuntu-based systems (e.g., Ubuntu, Debian):

Follow these steps to install Docker on an Ubuntu-based system:

```bash
# Download the Ubuntu installation script
wget https://github.com/MehmetOguz26/docker-commands-and-best-practices/docker-install/ubuntu-docker-install.sh

# Make the script executable
chmod +x ubuntu-docker-install.sh

# Run the installation script
./ubuntu-docker-install.sh
```
### This script will:
- Update your system package lists.
- Install Docker dependencies.
- Add Docker’s official repository and GPG key.
- Install Docker.
- Start and enable the Docker service.
```
```
### 2. For RHEL-based systems (e.g., Centos, Red Hat):

Follow these steps to install Docker on an RHEL-based system:

```bash
# Download the Ubuntu installation script
wget https://github.com/MehmetOguz26/docker-commands-and-best-practices/docker-install/centos-docker-install.sh

# Make the script executable
chmod +x centos-docker-install.sh

# Run the installation script
./centos-docker-install.sh
```
### This script will:
- Update your system package lists.
- Install Docker dependencies.
- Add Docker’s official repository and GPG key.
- Install Docker.
- Start and enable the Docker service.
