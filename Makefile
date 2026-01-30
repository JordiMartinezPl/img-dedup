SCRIPT = img-dedup
PREFIX = /usr/local/bin

.PHONY: all install uninstall clean

all:
	@echo "Usage:"
	@echo "  make install   - Install $(SCRIPT) to $(PREFIX)"
	@echo "  make uninstall - Remove $(SCRIPT) from $(PREFIX)"
	@echo "  make clean     - Remove cached python files"

install:
	chmod +x $(SCRIPT)
	cp $(SCRIPT) $(PREFIX)/$(SCRIPT)

uninstall:
	rm -f $(PREFIX)/$(SCRIPT)

clean:
	rm -rf __pycache__
	rm -f *.pyc
