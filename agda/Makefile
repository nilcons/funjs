BROWSERIFY = ../node_modules/browserify/bin/cmd.js

all: js/out.js

js/out.js: $(BROWSERIFY) js/jAgda.Tree.js js/main.js
	cd js && sed -i 's/require("\([^.]\)/require(".\/\1/g' agda-rts.js jAgda.*.js
	cd js && ../$(BROWSERIFY) main.js -o out.js

js/jAgda.%.js: %.agda
	agda --js --compile-dir=js $^

$(BROWSERIFY):
	cd .. && npm install browserify

clean:
	$(RM) -r _build
	cd js && $(RM) jAgda.*.js biginteger.js agda-rts.js out.js

.PHONY: all clean
