# Makefile to build the x11 set.
# $Id: Makefile,v 1.2 2023/11/05 19:54:03 lecorbeau Exp $

MAKE	= make -C

SUBDIRS = dwm rt dmenu surf wmutils-core

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

