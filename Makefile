DOCUMENT=graphalytics_spec.tex

all: $(DOCUMENT)
	latexmk -pdf --interaction=batchmode $(DOCUMENT)

texfot: $(DOCUMENT)
	./texfot.pl latexmk -pdf --interaction=batchmode $(DOCUMENT)

clean:
	rm -f *.aux *.dvi *.thm *.lof *.log *.lot *.fls *.out *.toc *.bbl *.blg *.fdb_latexmk
