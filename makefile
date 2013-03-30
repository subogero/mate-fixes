all: mate-terminal-wrapper

install:
	cp -f mate-terminal-wrapper /usr/bin
	mv /etc/alternatives/x-terminal-emulator /etc/alternatives/x-terminal-emulator~
	ln -s -T /usr/bin/mate-terminal-wrapper /etc/alternatives/x-terminal-emulator

uninstall:
	rm -f /usr/bin/mate-terminal-wrapper 
	rm /etc/alternatives/x-terminal-emulator
	mv /etc/alternatives/x-terminal-emulator~ /etc/alternatives/x-terminal-emulator
