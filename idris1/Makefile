
all: js/Tree.js

js/%.js: %.idr
	idris --codegen javascript $^ -o $@
	sed -i '3d; /runMain/,$$d' $@

clean:
	$(RM) *.ibc js/Tree.js

.PHONY: all clean
