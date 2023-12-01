# Makefile to build the x11 set.
# $Id: Makefile,v 1.5 2023/12/01 21:01:27 lecorbeau Exp $

MAKE	= make -C

SUBDIRS = cwm dwm rt dmenu surf wmutils-core

all:
	for _dir in ${SUBDIRS}; do \
		${MAKE} $$_dir; \
		done

install:
	for _dir in ${SUBDIRS}; do \
		${MAKE} $$_dir install; \
		done

clean:
	for _dir in ${SUBDIRS}; do \
		${MAKE} $$_dir clean; \
		done

dist:
	mkdir -p ${TOPDIR}/packages
	for _dir in ${SUBDIRS}; do \
		${MAKE} $$_dir deb; \
		mv $$_dir/*.deb ${TOPDIR}/packages; \
		done

dist-clean:
	for _dir in ${SUBDIRS}; do \
		${MAKE} $$_dir dist-clean; \
		done
