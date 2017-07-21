FROM alpine:3.6
MAINTAINER aleksi.johansson@wunder.io

# Create app user with app group. Specifically assign uid and gid 1000
# to app user and group so that it matches the host user and group id
# on some major host operating systems.
RUN mkdir /app && \
    /usr/sbin/addgroup -g 1000 app && \
    /usr/sbin/adduser -D -H -h /app -u 1000 -G app app && \
    /bin/chown -R app:app /app
