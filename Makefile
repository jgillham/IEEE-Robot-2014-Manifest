SOURCE=$(wildcard *.tex)
OBJ=$(SOURCE:%.tex=%.pdf)

view: compile
	gnome-open $(OBJ)

compile: $(OBJ)

%.pdf : %.tex
        pdflatex -draftmode -interaction=nonstopmode -halt-on-error $<
	pdflatex -interaction=nonstopmode -halt-on-error $<
clean:
	rm -f *.synctex.gz *.aux *.log *.pdf *.toc *.backup
