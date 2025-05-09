#!/bin/bash

# Update data attributes
find . -name "*.html" -exec sed -i '' 's/data-toggle/data-bs-toggle/g' {} \;
find . -name "*.html" -exec sed -i '' 's/data-target/data-bs-target/g' {} \;
find . -name "*.html" -exec sed -i '' 's/data-dismiss/data-bs-dismiss/g' {} \;
find . -name "*.html" -exec sed -i '' 's/data-parent/data-bs-parent/g' {} \;

# Update modal close button
find . -name "*.html" -exec sed -i '' 's/<button class="close" type="button" data-bs-dismiss="modal" aria-label="Close">\s*<span aria-hidden="true">×<\/span>\s*<\/button>/<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><\/button>/g' {} \;

# Update form controls if needed
find . -name "*.html" -exec sed -i '' 's/class="form-control\(-[a-z]*\)*"/class="form-control\1"/g' {} \;

echo "Bootstrap 5 attribute updates completed!"