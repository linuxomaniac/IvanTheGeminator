.PHONY: clean

%.rxe: %.nxc
	../nbc -EF $< -O=$@

ivan: main.rxe
	mv main.rxe ivan.rxe

clean:
	rm -rf *.rxe 2>/dev/null

push:
	sudo ../t2n -put ivan.rxe