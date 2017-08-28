#!/bin/bash

# Script to generate .md .epub and .html files  from markdown files.


pandoc -S -o epub-sample/cz.md metadata.txt frontmatter/dedication.markdown  chaptersMD/01-Algunos-Recuerdos/01-chapter1.markdown chaptersMD/01-Algunos-Recuerdos/postchapter.markdown chaptersMD/02-Algo-No-Anda-Bien/01-chapter2.markdown 

pandoc -S -o epub-sample/cz.html metadata.txt frontmatter/dedication.markdown  chaptersMD/01-Algunos-Recuerdos/01-chapter1.markdown chaptersMD/01-Algunos-Recuerdos/postchapter.markdown chaptersMD/02-Algo-No-Anda-Bien/01-chapter2.markdown 

pandoc -S -o epub-sample/cz.epub metadata.txt frontmatter/dedication.markdown  chaptersMD/01-Algunos-Recuerdos/01-chapter1.markdown chaptersMD/01-Algunos-Recuerdos/postchapter.markdown chaptersMD/02-Algo-No-Anda-Bien/01-chapter2.markdown 

