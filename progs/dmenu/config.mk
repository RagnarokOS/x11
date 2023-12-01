# dmenu version
VERSION = 4.9

include ${TOPDIR}/usr/share/X11/mk/xprogs.mk

# paths
PREFIX = /usr
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2
# OpenBSD (uncomment)
#FREETYPEINC = $(X11INC)/freetype2

# includes and libs
INCS = -I$(X11INC) -I$(FREETYPEINC)
LIBS = -L$(X11LIB) -lX11 $(XINERAMALIBS) $(FREETYPELIBS)

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -DVERSION=\"$(VERSION)\" \
	   ${HARDENING_CPPFLAGS} $(XINERAMAFLAGS)
CFLAGS   = -std=c99 -pedantic -Wall ${O_FLAG} ${CFLAGS_LTO} $(INCS) $(CPPFLAGS) ${HARDENING_CFLAGS}
LDFLAGS  = ${LDFLAGS_LTO} ${HARDENING_LDFLAGS} $(LIBS)

# compiler and linker
CC = clang
