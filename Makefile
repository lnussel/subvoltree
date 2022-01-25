CFLAGS=-Wall -g -O2 -D_GNU_SOURCE -I tig/include -I tig $(shell pkg-config --cflags ncurses)
LDLIBS=$(shell pkg-config --libs ncurses)
OBJS=tig/test/tools/test-graph.o $(addsuffix .o,$(addprefix tig/src/,string util io graph graph-v1 graph-v2)) $(addsuffix .o,$(addprefix tig/compat/,hashtab utf8proc))

test-graph: $(OBJS)
	$(LINK.c) $^ $(LOADLIBES) $(LDLIBS) -o $@

clean:
	rm -f test-graph $(OBJS)

.PHONY: clean
