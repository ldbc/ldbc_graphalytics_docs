#!/bin/bash

# prevent "Couldn't read xref table" errors
cd figures/examples
for f in *.pdf; do pdftk $f cat output $f.new && mv $f.new $f; done
cd ../..

# compile a single bib file
mv graphalytics_spec.tex ms.tex
mv references.bib ms.bib
sed -i 's/\\bibliography{references}/\\bibliography{ms}/' ms.tex

# build
epstopdf figures/example_evlp.eps
latexmk -pdf --interaction=batchmode ms

# cleanup 
rm *.aux *.dvi *.thm *.lof *.log *.lot *.fls *.out *.toc *.blg *.fdb_latexmk *.pdf
rm ms.zip
rm -rf doc/

# create archive
zip -r ms.zip *
