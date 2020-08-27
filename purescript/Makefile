PURS = ../node_modules/purescript/purs
SPAGO = ../node_modules/spago/spago
PORT = 8800

export PATH := $(shell pwd)/../node_modules/purescript:$(PATH)

all: tools
	$(SPAGO) bundle-app

tools: $(PURS) $(SPAGO)

server:
	python3 -m http.server --bind 127.0.0.1 $(PORT)

$(PURS):
	cd .. && npm install purescript
	cp $(PURS).bin $(PURS)

$(SPAGO):
	cd .. && npm install spago

clean:
	$(RM) -r output
	$(RM) index.js

.PHONY: all tools clean server
