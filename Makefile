BP_Labsky_David_2017:
	arara main
	mv main.pdf BP_Labsky_David_2017.pdf

clean:
	git clean -Xf

.PHONY: clean all
