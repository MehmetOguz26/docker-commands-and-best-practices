# Use nginx:alpine-slim as base Docker Image
FROM nginx:alpine-slim

# Set environment variables for configuration
ENV NGINX_PORT1=8080
ENV NGINX_PORT2=8081

# OCI Labels
LABEL org.opencontainers.image.authors="Mehmet OGUZ"
LABEL org.opencontainers.image.title="Docker Ports usage"
LABEL org.opencontainers.image.description="A Dockerfile demo illustrating the use of the Docker Ports"
LABEL org.opencontainers.image.version="1.0"

# Custom Labels
LABEL nginx_port1=${NGINX_PORT1}
LABEL nginx_port2=${NGINX_PORT2}

# Install curl
RUN apk --no-cache add curl

# Create two directories for serving content
RUN mkdir -p /usr/share/nginx/html/app01 /usr/share/nginx/html/app02

# Copy content to the respective directories
COPY app1/index.html /usr/share/nginx/html/app01
COPY app2/index.html /usr/share/nginx/html/app02
COPY index.html /usr/share/nginx/html

# Copy custom NGINX configuration file to default.conf
COPY my_custom_nginx.conf /etc/nginx/conf.d/my_custom_nginx.conf

# Expose both ports
EXPOSE $NGINX_PORT1 $NGINX_PORT2
