SOURCE=$(wildcard *.tex)
OBJ=$(SOURCE:%.tex=%.pdf)
RES=Arduino_bb.png

view: compile
	gnome-open $(OBJ)

compile: $(RES) $(OBJ)

%.pdf : %.tex
        pdflatex -draftmode -interaction=nonstopmode -halt-on-error $<
	pdflatex -interaction=nonstopmode -halt-on-error $<

Arduino_bb.png:
	wget -nc http://arduino.cc/en/uploads/Tutorial/Arduino_bb.png

clean:
	rm -f *.synctex.gz *.aux *.log *.pdf *.toc *.backup
