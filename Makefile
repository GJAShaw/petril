# Makefile
# project: petril

CC := gcc
RM := rm -Rf

exe := petril
obj := petril.o
src := petril.c

all: $(exe)

.ONESHELL:
.PHONEY: all clean

$(exe): $(obj)
	$(CC) -o "$@" "$<"

$(obj): $(src)
	$(CC) -c "$<"

clean:
	$(RM) $(exe) $(obj)

