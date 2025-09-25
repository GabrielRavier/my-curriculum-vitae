.PHONY: all

OUTPUTS = CV.pdf CV-fr.pdf

all: $(OUTPUTS)

%.pdf: %.odt
	libreoffice --headless --convert-to pdf $^
# 	mv $(SOURCE_NAME).pdf $(OUTPUT_NAME).pdf

clean:
	rm $(OUTPUTS)
