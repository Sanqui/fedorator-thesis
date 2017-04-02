svgs = $(shell for F in media/*.svg; do echo $${F%.svg}; done)

media/%.pdf: media/%.svg
	inkscape -D -z --file="$<" --export-pdf "$@" --export-latex

BP_Labsky_David_2017: $(addsuffix .pdf,$(svgs))
	arara main
	mv main.pdf BP_Labsky_David_2017.pdf

clean:
	git clean -Xf

.PHONY: clean all
