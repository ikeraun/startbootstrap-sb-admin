#!/bin/bash

# Script to update SCSS files for Dart Sass 2.0 compatibility

# Add sass:math import to necessary files
find scss -name "*.scss" -type f -exec grep -l "calc\|/" {} \; | xargs -I{} sed -i '' '1s/^/@use "sass:math";\n/' {}

# Fix division operations in calc expressions
find scss -name "*.scss" -type f -exec sed -i '' 's/calc(\([^)]\+\)\([a-zA-Z0-9_$#{}]\+\) \/ \([0-9.]\+\)\([^)]\+\))/calc(\1math.div(\2, \3)\4)/g' {} \;

# Fix other division operations
find scss -name "*.scss" -type f -exec sed -i '' 's/\([a-zA-Z0-9_$#{}]\+\) \/ \([0-9.]\+\)/math.div(\1, \2)/g' {} \;

echo "SCSS files updated for Dart Sass 2.0 compatibility!"