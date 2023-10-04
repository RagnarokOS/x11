# Makefile to build the x11 set.
# $Id: Makefile,v 1.1 2023/09/21 18:25:49 lecorbeau Exp $

MAKE	= make -C

SUBDIRS = dwm rt dmenu wmutils-core

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

