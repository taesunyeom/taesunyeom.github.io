JEMDOC = python3 /tmp/jemdoc-tool/jemdoc

DOCS = index

HDOCS=$(addsuffix .html, $(DOCS))

all: $(HDOCS)

%.html: %.jemdoc MENU
	$(JEMDOC) -o $@ $<

clean:
	-rm -f $(HDOCS)

.PHONY: all clean
