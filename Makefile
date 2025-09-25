.PHONY: all

OUTPUTS = CV.pdf CV-fr.pdf CV-short-fr.pdf CV-short-fr.odt

all: $(OUTPUTS)

%.pdf: %.odt
	libreoffice --headless --convert-to pdf $^

CV-short-fr.odt: CV-fr.odt
	cp $^ $@

CV-short-fr.pdf: CV-fr.pdf
	cp $^ $@

clean:
	rm $(OUTPUTS)
