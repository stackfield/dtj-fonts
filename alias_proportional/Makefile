DT_PATH=/usr/dt
LISP=sbcl --script

mkalias:
	$(LISP) mkfontalias_for_dt.lisp > fonts.alias

clean:
	rm -f fonts.alias-fontaliases

all: mkalias
