CC = gcc
CFLAGS = -std=gnu17 -Wall -Werror -Wextra -Wpedantic -Iinclude

DEBUG_FLAGS = $(CFLAGS) -O0 -g

TARGET = bin/simd.out
SRC = $(wildcard src/*.c)
OBJ = $(patsubst src/%.c,obj/%.o,$(SRC))

.PHONY: all debug run clean default

default: $(TARGET)

$(TARGET): $(OBJ)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -o $@ $^

obj/%.o: src/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -o $@ -c $<
