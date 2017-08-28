#!/bin/bash

#script to generate tree folder of a boook (chapters only), will create  01-, 02-, ... XX folders with a 01-capterxx.markdown file

for i in {1..20}
do
   mkdir 0$i- && touch 01-chapter0$i.markdown && mv 01-chapter0$i.markdown 0$i-/
done
