LaTeX Template 
==============

based on: https://github.com/fh-salzburg/Template-Abschlussarbeit-LaTeX

modified for ubuntu 12.04.2 LTS

Steps to install latest texlive:
* open a terminal
* sudo add-apt-repository ppa:texlive-backports/ppa
* sudo apt-get update
* sudo apt-get upgrade (if you've texlive allready installed)
* sudo apt-get install texlive
* maybe some other packages are required, for example: texlive-lang-german texlive-bibtex-extra texlive-latex-extra texlive-extra-utils, install them if required (take a look at the output from pdflatex if something is missing!!!)

Building
--------

### All

	make all


builds the bibliography according to all cites and creates the PDF file
	Bakk1.pdf
in the build directory.
Note: this runs pdflatex 3 times total to get all references right.

### Quick 
	make quick

only runs pdflatex once. Suitable for small changes and usually leaves
unresolved references.

### Clean 
	make clean

cleans alls intermediate files and files in the build directory.
Use clean for major changes of your document structure including
modifications of the bibliography.


Editing
-------

My prefered editor is "Gummi" --> http://dev.midnightcoding.org/projects/gummi/

There is a Gummi Project File (GummiProject.gummi), you have to insert the correct path to use it.


### Titlepage 
Open the file ''Title.tex'' and edit the following items:
* title
* your name
* your student id
* supervisor
* optional second supervisor
* date of publication
* optional lock flag if your work is to be kept confidential until a certain date

### Abstract
Open the file ''Abstract.tex''.
* write your English abstract
* give English keywords
* write your German abstract
* give German keywords

### Body
Open the file ''Body.tex''.
* write your thesis...
* use section/subsection/subsubsection for your document structure
* see the template file for further LaTeX usage hints

### Bibliography
Open the file ''Bibliography.bib''.
* Copy and paste your bibtex entries from internet/library/bibtex archives.
* use a unique code for each entry
* use this code within the ''\cite'' LaTeX command
