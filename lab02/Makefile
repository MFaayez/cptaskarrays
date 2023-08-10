CC=gcc
CFLAGS=-g -Wall -std=c99

all: linked_list

linked_list: linked_list.o test_linked_list.o
	$(CC) -o linked_list linked_list.o test_linked_list.o

linked_list.o: linked_list.c linked_list.h
	$(CC) $(CFLAGS) -c linked_list.c

test_linked_list.o: test_linked_list.c linked_list.h
	$(CC) $(CFLAGS) -c test_linked_list.c

cleanlist:
	rm linked_list linked_list.o test_linked_list.o
	
all: bit_ops

bit_ops: bit_ops.o test_bit_ops.o
	$(CC) -o bit_ops bit_ops.o test_bit_ops.o

bit_ops.o: bit_ops.c bit_ops.h
	$(CC) $(CFLAGS) -c bit_ops.c

test_bit_ops.o: test_linked_list.c linked_list.h
	$(CC) $(CFLAGS) -c test_bit_ops.c

cleanbit:
	rm bit_ops bit_ops.o test_bit_ops.o
	
all: vector

vector: vector.o test_vector.o
	$(CC) -o vector vector.o test_vector.o

vector.o: vector.c vector.h
	$(CC) $(CFLAGS) -c vector.c

test_vector.o: test_vector.c vector.h
	$(CC) $(CFLAGS) -c test_vector.c

cleanvec:
	rm vector vector.o test_vector.o
	
clean:
	rm linked_list linked_list.o test_linked_list.o
	rm bit_ops bit_ops.o test_bit_ops.o
	rm vector vector.o test_vector.o

