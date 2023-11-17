# Global Makefile for x11
# $Ragnarok: Makefile,v 1.1 2023/11/17 16:46:04 lecorbeau Exp $

MAKE	= make -C
SUBDIRS	= progs usr

all:
	${MAKE} progs

install:
	for _dir in ${SUBDIRS}; do \
		${MAKE} $$_dir install; \
		done
