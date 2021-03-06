.POSIX:

VERSION = 1.4
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

all:
	@echo options:
	@echo install -- install timestamp.
	@echo uninstall -- uninstall timestamp.

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	mkdir -p $(DESTDIR)$(PREFIX)/share/bash-completion/completions
	mkdir -p $(DESTDIR)$(PREFIX)/share/zsh/site-functions
	sed "s/VERSION/$(VERSION)/g" < timestamp > $(DESTDIR)$(PREFIX)/bin/timestamp
	chmod 775 $(DESTDIR)$(PREFIX)/bin/timestamp
	sed "s/VERSION/$(VERSION)/g" < timestamp.1 > $(DESTDIR)$(MANPREFIX)/man1/timestamp.1
	chmod 664 $(DESTDIR)$(MANPREFIX)/man1/timestamp.1
	cp -f completion/bash/timestamp.bash $(DESTDIR)$(PREFIX)/share/bash-completion/completions/timestamp
	cp -f completion/zsh/_timestamp $(DESTDIR)$(PREFIX)/share/zsh/site-functions

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/timestamp
	rm -f $(DESTDIR)$(MANPREFIX)/man1/timestamp.1
	rm -f $(DESTDIR)$(PREFIX)/share/bash-completion/completions/timestamp
	rm -f $(DESTDIR)$(PREFIX)/share/zsh/site-functions/_timestamp

.PHONY: all install uninstall
