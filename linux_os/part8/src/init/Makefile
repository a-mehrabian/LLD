
TARGET=init
CSOURCES = $(shell echo *.c)
OBJECTS = $(CSOURCES:.c=_c.o)

LDFLAGS = -lmy -lfb -L$(MYOS_PATH)/lib

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(FLAGS) -o $(TARGET) $(OBJECTS) $(LDFLAGS)

include ../base.mk
