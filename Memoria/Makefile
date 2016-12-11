all: memoria.pdf presentacion.pdf



memoria.pdf: ./*.tex ./Temas/Ejemplos/*.tex ./Temas/Hardware/*.tex ./Temas/Intro/*.tex ./Temas/Protocolos/*.tex ./Temas/Software/*.tex ./Bibliografia/*.bib
	pdflatex -shell-escape -interaction=nonstopmode -file-line-error ./memoria.tex
	bibtex memoria
	pdflatex -shell-escape -interaction=nonstopmode -file-line-error ./memoria.tex
	pdflatex -shell-escape -interaction=nonstopmode -file-line-error ./memoria.tex
	make clean

presentacion.pdf: ./*.tex ./TemasBeamer/Ejemplos/*.tex ./TemasBeamer/Intro/*.tex ./TemasBeamer/Protocolos/*.tex ./TemasBeamer/Software/*.tex
	pdflatex -shell-escape -interaction=nonstopmode -file-line-error ./presentacion.tex
	pdflatex -shell-escape -interaction=nonstopmode -file-line-error ./presentacion.tex
	make clean


clean:
	echo "Limpieza"
	find . -regex ".*~" -exec rm -r {} \;

	rm -f ./*.aux
	rm -f ./*.log
	rm -f ./*.nav
	rm -f ./*.out
	rm -f ./*.vrb
	rm -f ./*.snm
	rm -f ./*.toc
	rm -f ./*.gz
	rm -f ./*.blg
	rm -f ./*.bbl

mrproper: clean
	rm -f ./*.pdf
