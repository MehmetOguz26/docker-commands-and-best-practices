#!/bin/bash

# This script installs Docker on a Red Hat or CentOS system.

echo "Updating system..."
sudo yum update -y

echo "Installing required dependencies..."
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

echo "Adding Docker repository..."
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

echo "Installing Docker..."
sudo yum install -y docker-ce

echo "Starting Docker service..."
sudo systemctl start docker

echo "Enabling Docker to start on boot..."
sudo systemctl enable docker

echo "Docker version:"
docker --version

echo "Docker installation completed!"
