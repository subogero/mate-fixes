# (c) SZABO Gergely <szg@subogero.com> WTFPL 2.0
TERMWRAP := mate-terminal-wrapper
BINDIR := /usr/bin
ALTXTERM := /etc/alternatives/x-terminal-emulator

all: $(TERMWRAP)

install: all
	cp -f $(TERMWRAP) $(BINDIR)
	if [ ! -f $(ALTXTERM)~ ]; then \
	  mv $(ALTXTERM) $(ALTXTERM)~; \
	  ln -s -T $(BINDIR)/$(TERMWRAP) $(ALTXTERM); \
	fi
	ln -s -T $(BINDIR)/mate-power-manager $(BINDIR)/gnome-power-manager

uninstall:
	rm -f $(BINDIR)/$(TERMWRAP) 
	[ -f $(ALTXTERM)~ ]; then \
	  rm $(ALTXTERM); \
	  mv $(ALTXTERM)~ $(ALTXTERM); \
	fi
	rm $(BINDIR)/gnome-power-manager
