# Makefile to build the x11 set.
# $Id: Makefile,v 1.3 2023/11/15 19:21:36 lecorbeau Exp $

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

