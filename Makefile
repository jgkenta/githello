
TAR=hello

CSRCS=$(shell find -type f -name *.c)

OBJS=$(subst .c,.o,$(CSRCS))


all: $(TAR)

$(TAR): $(OBJS)
	$(CC) $^ -o $@

clean:
	rm *.o $(TAR)

.phony: all clean
