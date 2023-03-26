CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=cipher.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=sipher

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@