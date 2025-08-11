all: slides

slides: slide.tex
	latexmk -pdf -bibtex -shell-escape -interaction=nonstopmode -output-directory="./out" -f slide.tex

cont: slide.tex
	latexmk -pdf -pvc -view=none -shell-escape -interaction=nonstopmode -output-directory="./out" -f slide.tex
