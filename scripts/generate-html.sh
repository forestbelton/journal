#!/bin/bash
set -euo pipefail

MATHJAX_URL=${MATHJAX_URL:-https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js}
CSS=${CSS:-../static/journal.css}

DATE="$DATE"
INPUT="$1"
OUTPUT="${INPUT%.md}.html"

pandoc \
    --standalone \
    --metadata title="Journal Notes" \
    --metadata date="$DATE" \
    "--mathjax=$MATHJAX_URL" \
	--output "$OUTPUT" \
    "--css=$CSS" \
    "$INPUT"
