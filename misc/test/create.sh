#!/bin/bash

#script to generate tree folder of a generic book, to be compiled with pandoc.
# For chapters, it will create  01-, 02-, ... XX folders with a 01-capterxx.markdown file
# Will create:
# Front matter:
#	- Dedication
#	- Epigraph
#	- Acknowledgements
#	- Introduction
#	- Prologue 
# Back matter
# 	- Epilogue
#	- Afterword
#	- PostScript
#	- Extro
#	- Appendix
#	- Glossary
#	- Colophon

mkdir "Front matter" && cd "Front matter"  #creating frnt matter
mkdir "dedication" && cd "dedication" && touch dedication.markdown && cd ..
mkdir "Epigraph" && cd "Epigraph" && touch epigraph.markdown && cd ..
mkdir "Acknowledgements" && cd "Acknowledgements" && touch acknowledgements.markdown && cd ..
mkdir "Introduction" && cd "Introduction" && touch introduction.markdown && cd ..
mkdir "Prologue" && cd "Prologue" && touch prologue.markdown && cd ..
cd .. #exiting front matter
mkdir "Back matter" && cd "Back matter" #creatign backmatter
mkdir "Epilogue" && cd "Epilogue" && touch epilogue.markdown && cd ..
mkdir "Afterword" && cd "Afterword" && touch afterword.markdown && cd ..
mkdir "Postscript" && cd "Postscript" && touch postscript.markdown && cd ..
mkdir "Extro" && cd "Extro" && touch Extro.markdown && cd ..
mkdir "Appendix" && cd "Appendix" && touch appendix.markdown && cd ..
mkdir "Glossary" && cd "Glossary" && touch glossary.markdown && cd ..
mkdir "Colophon" && cd "Colophon" && touch colophon.markdown && cd ..
cd .. #exiting backmatter




mkdir "chapters" && cd "chapters"

for i in {1..20} # chapters with a .markdown file each (blank)
do
   mkdir 0$i- && touch 01-chapter0$i.markdown && mv 01-chapter0$i.markdown 0$i-/
done

cd .. #exits chapters

touch metadata.txt 





