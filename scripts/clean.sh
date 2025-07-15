#!/bin/bash
# Clean script for AI Theory LaTeX compilation artifacts

echo "Cleaning LaTeX artifacts..."

# Remove LaTeX compilation artifacts
find . -name "*.aux" -delete
find . -name "*.log" -delete
find . -name "*.out" -delete
find . -name "*.toc" -delete
find . -name "*.bbl" -delete
find . -name "*.blg" -delete
find . -name "*.fls" -delete
find . -name "*.fdb_latexmk" -delete
find . -name "*.synctex.gz" -delete
find . -name "*.nav" -delete
find . -name "*.snm" -delete
find . -name "*.vrb" -delete
find . -name "*.bcf" -delete
find . -name "*.xml" -delete
find . -name "*.run.xml" -delete

echo "Clean complete!"