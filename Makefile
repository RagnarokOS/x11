# Global Makefile for x11
# $Ragnarok: Makefile,v 1.3 2023/12/02 19:15:10 lecorbeau Exp $

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
	find packages/ -type f -name '*dbgsym*' -delete
