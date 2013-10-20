.PHONY: all clean install uninstall

all:	
	ocamlbuild lib/typeutil.cma lib/typeutil.cmxa

clean:
	rm -fr _build

install: all
	cd _build/lib && ocamlfind install typeutil ../../META *.a *.cma *.cmxa *.mli *.cmi

uninstall:
	ocamlfind remove typeutil

