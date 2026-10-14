CC = gcc
CFLAGS = -std=gnu17 -mavx2 -O3 -Wall -Werror -Wextra -Wpedantic -Iinclude

TARGET = bin/simd.out
SRC = $(wildcard src/*.c)
OBJ = $(patsubst src/%.c,obj/%.o,$(SRC))

.PHONY: all debug run clean default

default: $(TARGET)

clean:
	rm -rf bin/
	rm -rf obj/

$(TARGET): $(OBJ)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -o $@ $^

obj/%.o: src/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -o $@ -c $<
