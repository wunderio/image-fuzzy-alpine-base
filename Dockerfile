FROM alpine:edge
MAINTAINER ilari.makela@wunderkraut.com

# Create app user
RUN mkdir /app && \
    /usr/sbin/addgroup -g 1000 app && \
    /usr/sbin/adduser -D -H -h /app -u 1000 -G app app && \
    /bin/chown -R app:app /app
