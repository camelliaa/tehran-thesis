#!/bin/bash

# Alternative commands to build final PDF:
xelatex -synctex=1 -interaction=nonstopmode main
bibtex8 -W -c cp1256fa main
xindy -L persian -C utf8 -I xindy -M main.xdy -t main.glg -o main.gls main.glo
xindy -L persian -C utf8 -I xindy -M main.xdy -t main.blg -o main.bls main.blo
xindy -L english -C utf8 -I xindy -M main.xdy -t main.alg -o main.acr main.acn
xelatex -synctex=1 -interaction=nonstopmode main
xelatex -synctex=1 -interaction=nonstopmode main
