.POSIX:

PREFIX = /usr/local
HOOKDIR = /usr/share/libalpm/hooks
CFLAGS = -Ofast
LDLIBS = -lX11

BIN = dwmblocks

$(BIN): main.o
	$(CC) $^ -o $@ $(LDLIBS)

clean:
	$(RM) *.o $(BIN)

install: $(BIN)
	install -D -m 755 $(BIN) $(DESTDIR)$(PREFIX)/bin/$(BIN)
	# Uncommenting for automatically refresh sb-package (Arch Linux)
	# install -D -m 644 statusbar.hook $(HOOKDIR)/sb-dwmblocks.hook

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/$(BIN)
	# Uncommenting for automatically refresh sb-package (Arch Linux)
	# $(RM) $(HOOKDIR)/sb-dwmblocks.hook

.PHONY: clean install uninstall
