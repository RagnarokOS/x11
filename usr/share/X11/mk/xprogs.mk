# Compile time options used by programs in Ragnarok's x11 set.
# $Ragnarok: x11progs.mk,v 1.1 2023/10/03 18:39:49 lecorbeau Exp $

# Flags to enable ThinLTO
CFLAGS_LTO		= -flto=thin
LDFLAGS_LTO		= -flto=thin -Wl,-O2

# -D_FORTIFY_SOURCE=2 needs -O2 or higher.
O_FLAG			= -O2

# CFLAGS for control flow integrity. Depends on the LTO flags.
CFLAGS_CFI		= ${CFLAGS_LTO} -fvisibility=hidden -fsanitize=cfi

# Hardening flags
HARDENING_CPPFLAGS	= -D_FORTIFY_SOURCE=2
HARDENING_CFLAGS 	= -fPIE -Wformat -Wformat-security -fstack-clash-protection \
			  -fstack-protector-strong --param=ssp-buffer-size=4 -fcf-protection
HARDENING_LDFLAGS	= -Wl,-z,relro,-z,now -Wl,-pie -Wl,-zdefs


