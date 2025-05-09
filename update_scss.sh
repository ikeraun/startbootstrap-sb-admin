#!/bin/bash

# Add sass:color and variables import to all SCSS files
find scss/ -name "_*.scss" -not -name "_variables.scss" | while read file; do
  # Check if the file doesn't already have the imports
  if ! grep -q "@use \"variables\"" "$file"; then
    # Get the relative path to the variables file
    rel_path=$(echo "$file" | sed -E 's|scss//(.*)_.*\.scss|../|g')
    rel_path=$(echo "$rel_path" | sed -E 's|scss/(.*)_.*\.scss|../|g')
    rel_path=$(echo "$rel_path" | sed -E 's|scss/_.*\.scss||g')
    
    # Add the imports at the top of the file
    sed -i '' -e '1s/^/\\n/' -e '1s/^/@use "'"$rel_path"'variables" as *;\\n/' "$file"
    
    # Add sass:color if needed
    if grep -q "color\.adjust\|rgba" "$file"; then
      sed -i '' -e '1s/^/\\n/' -e '1s/^/@use "sass:color";\\n/' "$file"
    fi
    
    # Add sass:math if needed
    if grep -q "math\.div" "$file"; then
      sed -i '' -e '1s/^/\\n/' -e '1s/^/@use "sass:math";\\n/' "$file"
    fi
  fi
done