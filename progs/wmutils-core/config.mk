PREFIX = /usr
MANPREFIX = $(PREFIX)/share/man

CC      = clang
LD      = $(CC)

HARDENING_CFLAGS = -D_FORTIFY_SOURCE=2 -Wformat-security -fstack-protector-strong -fstack-clash-protection --param=ssp-buffer-size=4 -fcf-protection
HARDENING_LDFLAGS = -Wl,-z,relro,-z,now -Wl,--as-needed

CFLAGS  = -std=c99 -pedantic -Wall -g -O2 ${CFLAGS_LTO} ${HARDENING_CFLAGS} -I/usr/X11R6/include
LDFLAGS = -lxcb -lxcb-util -lxcb-cursor ${LDFLAGS_LTO} ${HARDENING_LDFLAGS}  -L/usr/X11R6/lib

