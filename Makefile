# Makefile based on the work of evangoer (https://github.com/evangoer/pandoc-ebook-template/blob/master/Makefile)







BUILD = epub-sample/build
BOOKNAME = cz
METADATA = metadata.txt
CHAPTERS = frontmatter/dedication.markdown  chaptersMD/01-Algunos-Recuerdos/01-chapter1.markdown chaptersMD/01-Algunos-Recuerdos/postchapter.markdown chaptersMD/02-Algo-No-Anda-Bien/01-chapter2.markdown
TOC = --toc --toc-depth=2
COVER_IMAGE = typesetting/art/front/images/candzcover--front---test.jpg
LATEX_CLASS = memoir

all: book

book: epub html pdf

clean:
	rm -r $(BUILD)

epub: $(BUILD)/epub/$(BOOKNAME).epub

html: $(BUILD)/html/$(BOOKNAME).html

pdf: $(BUILD)/pdf/$(BOOKNAME).pdf

$(BUILD)/epub/$(BOOKNAME).epub: $(CHAPTERS)
	mkdir -p $(BUILD)/epub
	pandoc $(TOC) -S $(METADATA) --epub-cover-image=$(COVER_IMAGE) -o $@ $^

$(BUILD)/html/$(BOOKNAME).html: $(CHAPTERS)
	mkdir -p $(BUILD)/html
	pandoc $(TOC) --standalone --to=html5 -o $@ $^

$(BUILD)/pdf/$(BOOKNAME).pdf: $(CHAPTERS)
	mkdir -p $(BUILD)/pdf
	pandoc $(TOC) --latex-engine=xelatex -V documentclass=$(LATEX_CLASS) -o $@ $^

.PHONY: all book clean epub html pdf
