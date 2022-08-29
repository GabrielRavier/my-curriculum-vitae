.PHONY: all

OUTPUT_NAME = CV.pdf
SOURCE_NAME = CV

all: $(OUTPUT_NAME)

$(OUTPUT_NAME): $(SOURCE_NAME).odt
	libreoffice --headless --convert-to pdf $^
# 	mv $(SOURCE_NAME).pdf $(OUTPUT_NAME).pdf

clean:
	rm $(OUTPUT_NAME)
