# Global Makefile for x11/usr
# $Ragnarok: Makefile,v 1.1 2023/11/17 16:50:13 lecorbeau Exp $

MAKE	= make -C

all:
	@echo "Nothing to do for 'all', skipping..."

install:
	install -d ${DESTDIR}/usr/share/X11/mk
	install -m 644 -g 0 -o root share/X11/mk/xprogs.mk ${DESTDIR}/usr/share/X11/mk
