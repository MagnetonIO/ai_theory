#!/bin/bash
# Build script for AI Theory LaTeX papers

set -e

echo "Building AI Theory papers..."

# Function to build LaTeX in a directory
build_latex() {
    local dir="$1"
    if [ -d "$dir" ]; then
        echo "Building papers in $dir..."
        for tex_file in "$dir"/*.tex; do
            if [ -f "$tex_file" ]; then
                echo "  Compiling $(basename "$tex_file")"
                cd "$(dirname "$tex_file")"
                pdflatex "$(basename "$tex_file")" > /dev/null 2>&1 || echo "    Error compiling $(basename "$tex_file")"
                cd - > /dev/null
            fi
        done
    fi
}

# Build all paper directories
find papers/ -name "*.tex" -type f | while read tex_file; do
    echo "Compiling $tex_file..."
    dir=$(dirname "$tex_file")
    cd "$dir"
    pdflatex "$(basename "$tex_file")" > /dev/null 2>&1 || echo "Error compiling $tex_file"
    cd - > /dev/null
done

echo "Build complete!"