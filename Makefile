SOURCE=LPCGV-template.tex

TeX=xelatex
PDF=$(SOURCE:.tex=.pdf)

all: file clean

file: $(SOURCE)
	$(TeX) $(SOURCE)
	$(TeX) $(SOURCE)

clean:
	@echo ""
	@echo "	Removing auxiliary files"
	@echo ""
	@rm -fv *.aux *.lof *.lot *.out *.log *.toc *.idx
	@echo ""
