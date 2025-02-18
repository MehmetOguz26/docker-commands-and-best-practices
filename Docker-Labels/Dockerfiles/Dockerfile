# Use nginx:alpine-slim as base Docker Image
FROM nginx:alpine-slim

# Custom Labels
LABEL maintainer="Mehmet OGUZ"  
LABEL version="1.0"
LABEL description="A simple Nginx Application"

# OCI Labels
LABEL org.opencontainers.image.authors="Mehmet OGUZ"
LABEL org.opencontainers.image.title="Nginx Alpine Slim Application"
LABEL org.opencontainers.image.description="A lightweight Nginx application built on Alpine."
LABEL org.opencontainers.image.version="1.0"
LABEL org.opencontainers.image.revision="1234abcd" 
LABEL org.opencontainers.image.created="2025-02-18"
LABEL org.opencontainers.image.url="https://github.com/mehmetoguz26/docker-commands-and-best-practices"
LABEL org.opencontainers.image.source="https://github.com/mehmetoguz26/docker-commands-and-best-practices/tree/main/Dockerfile-Labels/Dockerfiles"
LABEL org.opencontainers.image.documentation="https://github.com/mehmetoguz26/docker-commands-and-best-practices/tree/main/Dockerfile-Labels"
LABEL org.opencontainers.image.vendor="mehmetoguz26"
LABEL org.opencontainers.image.licenses="Apache-2.0"

# Using COPY to copy a local file
COPY index.html /usr/share/nginx/html
