# Use nginx:alpine-slim as base Docker Image
FROM nginx:alpine-slim

# OCI Labels
LABEL org.opencontainers.image.authors="Mehmet OGUZ"
LABEL org.opencontainers.image.title="COPY vs ADD Instructions in Dockerfile"
LABEL org.opencontainers.image.description="A Dockerfile demo illustrating the differences between COPY and ADD instructions, including copying files and extracting tarballs."
LABEL org.opencontainers.image.version="1.0"

# Using COPY to copy a local file
COPY copy-file.html /usr/share/nginx/html

# Using ADD to extract a tarball
ADD static_files.tar.gz /usr/share/nginx/html
