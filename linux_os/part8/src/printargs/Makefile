
TARGET=printargs
CSOURCES = $(shell echo *.c)
OBJECTS = $(CSOURCES:.c=_c.o)

LDFLAGS = -L$(MYOS_PATH)/lib -lmy
BINDIR = $(PREFIX)/bin

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(FLAGS) -o $(TARGET) $(OBJECTS) $(LDFLAGS)

include ../base.mk
