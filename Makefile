#Made by Jorge Fonseca
#Run As: make clean; make; make cleanpdf
FILE=starbucksocr

all: $(FILE).pdf

.PHONY: clean

clean:
	rm -rf *.blg 
	rm -rf *.out 
	rm -rf *.bbl 
	rm -rf *.ind
	rm -rf *.ilg
	rm -rf *.loa
	rm -rf *.lof
	rm -rf *.log
	rm -rf *.lot
	rm -rf *.ind
	rm -rf *.idx
	rm -rf *.aux
	rm -rf *.toc
	rm -f ${FILE}.pdf

.PHONY: cleanpdf

cleanpdf:
	rm -rf *.blg 
	rm -rf *.out 
	rm -rf *.bbl 
	rm -rf *.ind
	rm -rf *.ilg
	rm -rf *.loa
	rm -rf *.lof
	rm -rf *.log
	rm -rf *.lot
	rm -rf *.ind
	rm -rf *.idx
	rm -rf *.aux
	rm -rf *.toc

$(FILE).pdf: *.tex *.bib *.sty
	pdflatex -shell-escape $(FILE).tex
	pdflatex -shell-escape $(FILE).tex
	bibtex $(FILE)
	pdflatex -shell-escape $(FILE).tex
	pdflatex -shell-escape $(FILE).tex


