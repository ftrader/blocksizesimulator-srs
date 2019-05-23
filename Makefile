all:
	xelatex blocksizesimulator-srs.tex
	xelatex blocksizesimulator-srs.tex
	$(MAKE) clean

indent:
	latexindent.pl -l localSettings.yaml -m -w blocksizesimulator-srs.tex

clean:
	rm -rf *.acn *.alg *.glg *.glo *.gls *.glsdefs *.ist *.xdy *.acr *.bbl *.blg *.aux *.dvi *.log *.lot *.idx *.toc *.lof *.brf *.out

mrproper: clean
	rm -rf *.pdf
