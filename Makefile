CC= 	gcc
LIB= 	-Wall -lncurses
PREFIX= /usr/local

chad_stride: 	chad_stride.c
	$(CC) -o $@ $^ $(LIB)

install: 	chad_stride
	install -m 755 -D chad_stride $(PREFIX)/bin/chad_stride

uninstall:
	rm -f $(PREFIX)/bin/chad_stride

clean:
	rm -f chad_stride
