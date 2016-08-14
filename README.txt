fidocadj-debian-package-builder - simon-zz

Use makedeb.sh to create the package.
Syntax:

$ makedeb.sh <version>

where <version> will be something like '0.24.6' or similar, so the resulting package name
will be fidocadj-<version>.deb. In this document, we refer to it as <packagename>. If the
version number is followed by a greek letter, the version is considered an unstable
preliminary version.

The file fidocadj.jar with version <version> will be installed in '/usr/local/bin'.
It's supposed that '/usr/local/bin' is already in the environment variable PATH.  

The package created from makedeb.sh can be installed (with root permissions) executing dpkg:

# dpkg -i <packagename> 

FidoCadJ is written in Java so from shell you can execute it with java:

$ java -jar /usr/local/bin/fidocadj.jar
