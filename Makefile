SIMD_STRING_DIR := $(CURDIR)/simd-string
SSE4_STRSTR_DIR := $(CURDIR)/sse4-strstr

all: tinyosc

tinyosc:
	gcc *.c -Werror -O0 -ggdb -L$(SIMD_STRING_DIR) -L$(SSE4_STRSTR_DIR) -lsimd-string -lsse4-strstr -I$(SIMD_STRING_DIR) -I$(SSE4_STRSTR_DIR) -Wl,-R$(SIMD_STRING_DIR) -Wl,-R$(SSE4_STRSTR_DIR) -o tinyosc

clean:
	-rm tinyosc

libsimd-string:
	make -C $(SIMD_STRING_DIR) libsimd-string

.PHONY: deps clean
