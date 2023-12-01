# Makefile to build the x11 set.
# $Id: Makefile,v 1.4 2023/12/01 18:58:06 lecorbeau Exp $

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
	for _dir in ${SUBDIRS}; do \
		${MAKE} $$_dir deb; \
		done

dist-clean:
	for _dir in ${SUBDIRS}; do \
		${MAKE} $$_dir dist-clean; \
		done
