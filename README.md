+# wunder-alpine-base
+
+A base docker image, on which other images can be base, in order to share a set of standards.
+
+The standards are used primarily to allow predicatable and compatible behaviour across images.  Not all images need to implement these standards, but primarily those images which need to share access to assets and file source should, as the standards solve a number of permissions related issues.
+
+1. all service/application assets and settings should be based out of /app
+2. all images should have an "app" (uid:1000, gid:1000) user
+3. "app" should own /app
+4. "app" should be used to run any services
+
+Using these standards should prevent any file permissions issues when different images share volumes.
