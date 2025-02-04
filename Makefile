# Simple makefile by z00m/SinDiKAT 02/2025

PREFIX=/usr/local/bin
SRC=./src
CXX=gcc
CXXFLAGS=-Wall
INSTALL=install -c
UNINSTALL=rm -f

all: wav2tzx

wav2tzx: ${SRC}/wav2tzx.c
	${CXX} ${CXXFLAGS} -Os -o wav2tzx ${SRC}/wav2tzx.c

install: wav2tzx
	strip wav2tzx
	${INSTALL} wav2tzx ${PREFIX}

uninstall:
	${UNINSTALL} ${PREFIX}/wav2tzx

clean:
	${UNINSTALL} wav2tzx
