# Bootstrap 4 to Bootstrap 5 Migration Summary

## Dependency Updates
- Updated Bootstrap from v4.6.0 to v5.3.3
- Updated DataTables from datatables.net-bs4 (1.10.24) to datatables.net-bs5 (1.13.6)
- Updated package.json description to reflect Bootstrap 5 usage
- Updated version number to 5.0.0 to reflect major version change

## HTML Updates
- Updated data attributes to Bootstrap 5 format:
  - `data-toggle` → `data-bs-toggle`
  - `data-target` → `data-bs-target`
  - `data-dismiss` → `data-bs-dismiss`
  - `data-parent` → `data-bs-parent`

## JavaScript Updates
- Created a Bootstrap 5 compatible version of the JS file (sb-admin-2-bs5.js)
- Updated collapse API calls to use Bootstrap 5's format:
  - Replaced `$('.collapse').collapse('hide')` with Bootstrap 5's JavaScript API that uses `bootstrap.Collapse.getInstance()`
- Updated JavaScript includes in HTML files to use the new Bootstrap 5 compatible file

## Build Process
- Updated gulpfile.js references to Bootstrap dependencies
- Updated path for DataTables to use the Bootstrap 5 version

## Documentation
- Updated README.md to indicate Bootstrap 5 usage
- Added note about Bootstrap 4 legacy version
- Updated copyright year

## Compatibility Notes
- Most Bootstrap 4 components work similarly in Bootstrap 5
- The migration primarily focused on updating the Bootstrap library, data attributes, and JavaScript API