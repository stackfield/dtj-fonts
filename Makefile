DT_PATH=/usr/dt
LISP=sbcl --script

mkalias:
	$(LISP) mkfontalias_for_dt.lisp > fonts.alias

mkfontaliases-only-dtsymbol:
	cat $(DT_PATH)/share/cde/fontaliases/mixed.alias | \
	grep "dtsymbol" > fonts.alias-fontaliases

install: mkfontaliases-only-dtsymbol
	cp sazanami-*.ttf $(DT_PATH)/etc/cde/fontaliases
	cp fonts.dir $(DT_PATH)/etc/cde/fontaliases
	cat fonts.alias > $(DT_PATH)/etc/cde/fontaliases/fonts.alias
	cat fonts.alias-fontaliases >> \
	$(DT_PATH)/etc/cde/fontaliases/fonts.alias

mkfontaliases-remove-jis-and-iso8859-1:
	cat $(DT_PATH)/share/cde/fontaliases/mixed.alias | \
	sed -e '/iso8859-1\"/d' -e '/jisx/d' > fonts.alias-fontaliases

install-fontaliases-only: mkfontaliases-remove-jis-and-iso8859-1
	cat fonts.alias > $(DT_PATH)/etc/cde/fontaliases/fonts.alias
	cat fonts.alias-fontaliases >> \
	$(DT_PATH)/etc/cde/fontaliases/fonts.alias

clean:
	rm -f fonts.alias-fontaliases

all: mkalias
