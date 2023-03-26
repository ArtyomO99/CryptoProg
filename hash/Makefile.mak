CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=hash.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=hash

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@