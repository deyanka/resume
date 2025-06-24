#!/bin/bash

set -e

pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

rm -f *.aux *.log *.out *.toc
