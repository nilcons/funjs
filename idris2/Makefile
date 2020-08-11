
all: build/exec/Tree.js

build/exec/%.js: %.idr
	idris2 --cg javascript -o $(notdir $@) $^

clean:
	$(RM) -r build

.PHONY: all clean
