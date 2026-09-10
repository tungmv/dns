.PHONY: install uninstall

PREFIX  ?= /usr/local
BINDIR  ?= $(PREFIX)/bin
TARGET  ?= $(BINDIR)/dns

install:
	@echo "Installing dns → $(TARGET)"
	install -m 0755 dns "$(TARGET)"
	@echo "Done. Run 'dns --help' to get started."

uninstall:
	@echo "Removing $(TARGET)"
	rm -f "$(TARGET)"
	@echo "Done."
