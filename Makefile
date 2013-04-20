SOURCE = Bakk.tex Abstract.tex Affirmation.tex Summary.tex Body.tex Title.tex
BIBLIOGRAPHY = Bibliography.bib

LATEXOPTIONS = -aux-directory=object

all: build/Bakk.pdf

build/Bakk.pdf: $(SOURCE) $(BIBLIOGRAPHY)
	pdflatex Bakk.tex $(LATEXOPTIONS) -output-directory=object
	bibtex Bakk 
	pdflatex Bakk.tex $(LATEXOPTIONS) -output-directory=object
	pdflatex Bakk.tex $(LATEXOPTIONS) -output-directory=build

install: build/Bakk.pdf
	cp build/Bakk.pdf .

quick: $(SOURCE)
	pdflatex Bakk.tex $(LATEXOPTIONS) -output-directory=build

clean:
	rm object/* -f
	rm build/* -f
