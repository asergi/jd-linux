NAME := jd-linux
VERSION := 0.3

PREFIX ?= /usr

JDBINDIR = $(DESTDIR)$(PREFIX)/bin

dist_files := jdownloader jdownloader.desktop jdownloader.png \
	      jdownloader.xml jd-container.png Makefile

all:
	for size in 16 22 24 32 48 128 256 ; do \
		install -d -m 755 hicolor/$${size}x$${size}/{apps,mimetypes} ; \
		if [ $$size -eq 24 ] ; then \
			convert hicolor/22x22/apps/jdownloader.png \
				-bordercolor Transparent -border 1x1 \
				hicolor/$${size}x$${size}/apps/jdownloader.png ; \
			convert hicolor/22x22/mimetypes/jd-container.png \
				-bordercolor Transparent -border 1x1 \
				hicolor/$${size}x$${size}/mimetypes/jd-container.png ; \
		else \
			convert jdownloader.png -resize $${size}x$${size} \
				hicolor/$${size}x$${size}/apps/jdownloader.png ; \
			convert jd-container.png -resize $${size}x$${size} \
				hicolor/$${size}x$${size}/mimetypes/jd-container.png ; \
		fi \
	done

install:
	install -D -m 755 jdownloader $(JDBINDIR)/jdownloader
	install -D -m 644 jdownloader.desktop \
		$(DESTDIR)$(PREFIX)/share/applications/jdownloader.desktop
	for icon in $(shell find hicolor -type f) ; do \
		install -D -m 644 $$icon $(DESTDIR)$(PREFIX)/share/icons/$$icon ; \
	done
	install -D -m 644 jdownloader.xml \
		$(DESTDIR)$(PREFIX)/share/mime/packages/jdownloader.xml

clean:
	rm -rf hicolor

uninstall:
	rm -f $(JDBINDIR)/jdownloader
	rm -f $(DESTDIR)$(PREFIX)/share/applications/jdownloader.desktop
	for icon in $(shell find hicolor -type f) ; do \
		rm -f $(DESTDIR)$(PREFIX)/share/icons/$$icon ; \
	done
	rm -f $(DESTDIR)$(PREFIX)/share/mime/packages/jdownloader.xml

dist:
	tar -c --transform="s@^@$(NAME)_$(VERSION)/@" $(dist_files) | \
		gzip -cn9 > $(NAME)_$(VERSION).tar.gz

.PHONY: all clean dist
