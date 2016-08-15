#!/bin/sh

VERSION="2.0.0"
MAINTEINER="simon-zz simonzz@yahoo.it"

DEBDIR="deb"
SUBDEBDIR="DEBIAN"
CTLFILE="control"
CTLPATH="${DEBDIR}/${SUBDEBDIR}/${CTLFILE}"

POSTINST="${DEBDIR}/${SUBDEBDIR}/postinst"
POSTRM="${DEBDIR}/${SUBDEBDIR}/postrm"

BINDIR="usr/local/share/fidocadj/bin/"
BINFILE="fidocadj.jar"
BINPATH="${DEBDIR}/${BINDIR}/${BINFILE}"

# BINVERSION="0.24.6"
BINVERSION=$1
PACKAGENAME="fidocadj-${BINVERSION}"

if [ -z ${BINVERSION} ]; then
	echo "Version is empty."
	echo "Please run this script with a version as a first argument"
	echo ""
	exit 1
fi

if [ -e "${CTLPATH}" -a -e "${BINPATH}" ]; then

	sed "s/Package.*/Package: ${PACKAGENAME}/g" -i "${DEBDIR}/${SUBDEBDIR}/${CTLFILE}"
	sed "s/Version.*/Version: ${BINVERSION}/g" -i "${DEBDIR}/${SUBDEBDIR}/${CTLFILE}"
	dpkg -b deb/ fidocadj-${BINVERSION}.deb
	exit $?
else
	echo "${DEBDIR}/${SUBDEBDIR}/${CTLFILE} or ${DEBDIR}/${BINDIR}/${BINFILE} is missing.."
	exit 1
fi

# install using dpkg: sudo dpkg -i fidocadj-0.24.6.deb
