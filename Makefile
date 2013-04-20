SOURCE = Bakk.tex Abstract.tex Affirmation.tex Summary.tex Body.tex Title.tex
BIBLIOGRAPHY = Bibliography.bib
LOGFILE = latex.log
PDFLATEX = pdflatex Bakk.tex > latex.log

all: Bakk.pdf

Bakk.pdf: $(SOURCE) $(BIBLIOGRAPHY)
	$(PDFLATEX)
	bibtex Bakk > latex.log
	$(PDFLATEX)
	$(PDFLATEX)

quick: $(SOURCE)
	$(PDFLATEX)

clean:
	@rm *.aux -rf
	@rm *.glo -rf
	@rm *.idx -rf
	@rm *.log -rf
	@rm *.toc -rf
	@rm *.ist -rf
	@rm *.acn -rf
	@rm *.acr -rf
	@rm *.alg -rf
	@rm *.bbl -rf
	@rm *.blg -rf
	@rm *.dvi -rf
	@rm *.glg -rf
	@rm *.gls -rf
	@rm *.ilg -rf
	@rm *.ind -rf
	@rm *.lof -rf
	@rm *.lot -rf
	@rm *.maf -rf
	@rm *.mtc -rf
	@rm *.mtc1 -rf
	@rm *.out -rf
	@rm *.synctex.gz -rf
	@rm *blx.bib -rf
	@rm *.lol -rf
	@rm *.run.xml -rf
