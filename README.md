# alpine-base

A base docker image, on which other images can be base, in order to share a set of standards.

Maintained by: Aleksi Johansson <aleksi.johansson@wunder.io>

## Docker

### Image

This image is available publicly at:

- quay.io/wunder/alpine-base : [![Docker Repository on Quay](https://quay.io/repository/wunder/alpine-base/status "Docker Repository on Quay")](https://quay.io/repository/wunder/alpine-base)

### Base

This image is based on the official alpine image https://hub.docker.com/_/alpine/.

### Modifications

1. Create /app directory;
2. create app user and group with id 1000;
3. set /app as app user home;
4. set app as owner of /app.

## Using this Image

This image is meant to be extended to application specific images by adding custom configuration.

The standards introduced are used primarily to allow predicatable and compatible behaviour across images.  Not all images need to implement these standards, but primarily those images which need to share access to assets and file source should, as the standards solve a number of permissions related issues.

1. all service/application assets and settings should be based out of /app
2. all images should have an "app" (uid:1000, gid:1000) user
3. "app" should own /app
4. "app" should be used to run any services

Using these standards should prevent any file permissions issues when different images share volumes.
