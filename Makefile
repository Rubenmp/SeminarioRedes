all: memoria.pdf presentacion.pdf

memoria.pdf: ./Memoria/*.tex 
	cd Memoria
	pdflatex -shell-escape -interaction=nonstopmode -file-line-error ./Memoria/memoria.tex
	pdflatex -shell-escape -interaction=nonstopmode -file-line-error ./Memoria/memoria.tex
	make clean
	cd ..
	mv memoria.pdf ./Memoria/memoria.pdf

presentacion.pdf: ./Presentacion/*.tex
	cd Presentacion
	pdflatex -shell-escape -interaction=nonstopmode -file-line-error ./Presentacion/presentacion.tex
	pdflatex -shell-escape -interaction=nonstopmode -file-line-error ./Presentacion/presentacion.tex
	make clean
	cd ..
	mv presentacion.pdf ./Presentacion/presentacion.pdf

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
