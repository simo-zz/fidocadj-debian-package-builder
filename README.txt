fidocadj-debian-package-builder - simon-zz

Use makedeb.sh to create the package.
Syntax:

$ makedeb.sh <version>

where <version> will be simething like '0.24.6' or similar, so the resulting package name
will be fidocadj-<version>.deb. In this document, we refer to it as <packagename>.

The file fidocadj.jar with version <version> will be installed in '/usr/local/bin'.
It's supposed that '/usr/local/bin' is already in the environment variable PATH.  

The package created from makedeb.sh can be installed (with root permissions) executing dpkg:

# dpkg -i <packagename> 

Fidocadj is written in Java so from shell you can execute it with java:

$ java -jar /usr/local/bin/fidocadj.jar
