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
wget https://path/to/your/repository/docker-install/install-ubuntu.sh

# Make the script executable
chmod +x install-ubuntu.sh

# Run the installation script
./install-ubuntu.sh
This script will:
### Update your system package lists.
Install Docker dependencies.
Add Docker’s official repository and GPG key.
Install Docker.
Start and enable the Docker service.

### 2. For CentOS/Red Hat-based systems (e.g., CentOS, RHEL):
Follow these steps to install Docker on CentOS or Red Hat-based systems:

```bash
# Download the CentOS/RedHat installation script
wget https://path/to/your/repository/docker-install/install-centos-redhat.sh

# Make the script executable
chmod +x install-centos-redhat.sh

# Run the installation script
./install-centos-redhat.sh
This script will:

### Update your system.
Install required dependencies.
Add Docker’s official repository.
Install Docker.
Start and enable the Docker service.
