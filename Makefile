cc = g++
cflags = -c -Wall
std11 = -std=c++11
obj = main.o linear_system.o helpers.o

all: src

src: $(obj)
	$(cc) $(obj) $(std11) -o main

main.o: main.cpp linear_system.o helpers.o vector.h matrix.h
	$(cc) $(cflags) $(std11) main.cpp

linear_system.o: linear_system.cpp linear_system.h
	$(cc) $(cflags) $(std11) linear_system.cpp

helpers.o: helpers.cpp helpers.h
	$(cc) $(cflags) $(std11) helpers.cpp

clean:
	rm -rf *.o main
