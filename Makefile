CC := gcc
CFLAGS := -Wall -Werror -Wextra -pedantic -std=gnu89

SRC := *.c

# todo: compile and run tests. `make test`

man:
	pandoc doc/seash.3.md -s -t man | /usr/bin/man -l -

clean:
	@rm -rf $(TARGET) *.o *.so *.a

