main.pdf: *.tex *.bib *.sty
	xelatex -synctex=1 main.tex && \
	bibtex main && \
	xelatex -synctex=1 main.tex && \
	xelatex -synctex=1 main.tex && \
	rm -rf *.aux *.log *.out;

minimal:
	xelatex -synctex=1 main.tex

clean:
	$(RM)  *.log *.aux \
	*.cfg *.glo *.idx *.toc \
	*.ilg *.ind *.out *.lof \
	*.lot *.bbl *.blg *.gls *.cut *.hd \
	*.dvi *.ps *.thm *.tgz *.zip *.rpi \
	*.d *.fls *.*.make
	$(RM) main.pdf
