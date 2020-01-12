SIMD_STRING_DIR := $(CURDIR)/simd-string

all: tinyosc

tinyosc:
	gcc *.c -Werror -O0 -ggdb -L$(SIMD_STRING_DIR) -lsimd-string -I$(SIMD_STRING_DIR) -Wl,-R$(SIMD_STRING_DIR) -o tinyosc

clean:
	-rm tinyosc

libsimd-string:
	make -C $(SIMD_STRING_DIR) libsimd-string

.PHONY: deps clean
