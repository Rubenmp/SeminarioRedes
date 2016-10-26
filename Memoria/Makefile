all: memoria.pdf

memoria.pdf: ./*.tex 
	pdflatex -shell-escape -interaction=nonstopmode -file-line-error ./memoria.tex
	pdflatex -shell-escape -interaction=nonstopmode -file-line-error ./memoria.tex
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

mrproper: clean
	rm -f ./*.pdf
