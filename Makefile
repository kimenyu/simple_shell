CC := gcc
CFLAGS := -Wall -Werror -Wextra -pedantic -std=gnu89

SRC := *.c
INCL := *.h
BINDIR := bin
TARGET := seash

# todo: compile and run tests. `make test`
#

run: $(TARGET)
	@$(BINDIR)/$^

$(TARGET): $(SRC) $(INCL) $(BINDIR)
	$(CC) $< -o $(BINDIR)/$@

$(BINDIR):
	mkdir $@

man:
	pandoc doc/seash.3.md -s -t man | /usr/bin/man -l -

clean:
	@rm -rf $(TARGET) *.o *.so *.a

