FROM nginx:alpine-slim

LABEL org.opencontainers.image.authors="Mehmet OGUZ"
LABEL org.opencontainers.image.title="Using RUN, EXPOSE Instructions in Dockerfile"
LABEL org.opencontainers.image.description="A Dockerfile demo illustrating the usage of RUN and EXPOSE instructions"
LABEL org.opencontainers.image.version="1.0"

COPY nginx-conf/*.conf /etc/nginx/conf.d/

COPY nginx-html/*.html /usr/share/nginx/html/

RUN apk --no-cache add curl

EXPOSE 8081 8082 8083
