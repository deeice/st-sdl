# st version
VERSION = 0.3

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# includes and libs
INCS = -I. -I/usr/include
#LIBS = -L/usr/lib -lc -lutil
LIBS = -L/usr/lib -lutil

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\"
#CFLAGS += -g -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS} `sdl-config --cflags`
CFLAGS += -g -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS} `sdl-config --cflags` -DZIPIT_Z2
#LDFLAGS += -g ${LIBS} `sdl-config --libs` -lSDL_ttf -pthread
LDFLAGS += -g ${LIBS} -L/usr/local/lib -Wl,-rpath,/usr/local/lib -pthread -lSDL -lSDL_ttf -pthread

# compiler and linker
CC ?= cc
