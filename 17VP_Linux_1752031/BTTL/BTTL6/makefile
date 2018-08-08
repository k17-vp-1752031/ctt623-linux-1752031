CC=gcc

.PHONY: clean all
RM=rm -f
OBJ=prog1.o f1.o f2.o f3.o

all : ex1 ex2
clean :
	RM *.o ex1 ex2
ex1 : $(OBJ)
	$(CC) $(OBJ) -o ex1

OBJ=prog2.o f1.o f2.o f4.o
ex2 : $(OBJ)
	$(CC) $(OBJ) -o ex2
%.o : %.c
	$(CC) -c $*.c 

depend:
	#$(CC) -MM *.c >> Makefile
	makedepend *.c


# DO NOT DELETE
