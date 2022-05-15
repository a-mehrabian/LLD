
TARGET=fbset
CSOURCES = $(shell echo *.c)
OBJECTS = $(CSOURCES:.c=_c.o)

LDFLAGS = -lmy -lfb -L$(MYOS_PATH)/lib
BINDIR = $(PREFIX)/bin

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(FLAGS) -o $(TARGET) $(OBJECTS) $(LDFLAGS)

include ../base.mk
