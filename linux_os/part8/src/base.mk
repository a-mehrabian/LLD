SHELL ?= /bin/sh
CC ?= gcc
FLAGS ?= -g -nostdlib -I../include
INSTALL_HOME ?= /home/a_mehrabian/dev/OS/LLD/install
MYOS_PATH ?= $(INSTALL_HOME)
DESTDIR ?= $(INSTALL_HOME)

PREFIX ?= $(DESTDIR)
BINDIR ?= $(PREFIX)/sbin

OBJECTS += ../crt0_s.o

%_c.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

%_s.o: %.S
	$(CC) $(FLAGS) -c $< -o $@

install:
	cp $(TARGET) $(BINDIR)/

preInstall:
	mkdir -p $(INSTALL_HOME)
	mkdir -p $(INSTALL_HOME)/lib
	mkdir -p $(INSTALL_HOME)/bin
	mkdir -p $(INSTALL_HOME)/sbin

clean:
	rm *.o $(TARGET)
	#rm -r /home/a_mehrabian/dev/OS/LLD/mnt
