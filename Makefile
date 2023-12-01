# Global Makefile for x11
# $Ragnarok: Makefile,v 1.2 2023/12/01 18:54:56 lecorbeau Exp $

MAKE	= make -C
SUBDIRS	= progs usr

all:
	${MAKE} progs

install:
	for _dir in ${SUBDIRS}; do \
		${MAKE} $$_dir install; \
		done

dist:
	${MAKE} progs dist
