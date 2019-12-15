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
#
# With the latest Tex Live, we get the "Package biblatex Warning: File '<file>.bbl' is wrong format version - expected 2.8"
# error, see https://github.com/plk/biblatex/wiki/biblatex-and-the-arXiv for details. Therefore, we use a Docker image of
# texlive-2016.
#
# the texlive-2016 Docker image does not have epstopdf so we do the conversion on the host machine
epstopdf figures/example_evlp.eps
# run the rest of the build inside Docker
docker run -v `pwd`/:/mnt/ makisyu/texlive-2016 /bin/bash -c "cd /mnt/ && latexmk -pdf --interaction=batchmode ms"
# fix ownerships after Docker run
sudo chown -R $USER:$USER .

# cleanup 
rm *.aux *.dvi *.thm *.lof *.log *.lot *.fls *.out *.toc *.blg *.fdb_latexmk *.pdf
rm ms.zip
rm -rf doc/

# create archive
zip -r ms.zip *
