fidocadj-debian-package-builder - simon-zz

Use makedeb.sh to create the package.
Syntax:

$ makedeb.sh <version>

where <version> will be simething like '0.24.6' or similar, so the resulting package name
will be fidocadj-<version>.deb. In this document, we refer to it as <packagename>.

The FidocadJ files for version <version> will be installed in '/usr/local/share/fidocadj' directory.
It's supposed that '/usr/local/bin' is already in the environment variable PATH, so will be created a symbolic link as:

/usr/local/bin/fidocadj.jar -> /usr/local/share/fidocadj/bin/fidocadj.jar

The package created from makedeb.sh can be installed (with root permissions) executing dpkg:

# dpkg -i <packagename> 

FidoCadJ is written in Java, so after installing the package, you can execute from shell executing java:

$ java -jar /usr/local/bin/fidocadj.jar
