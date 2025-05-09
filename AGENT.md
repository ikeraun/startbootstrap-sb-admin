# Agent Guidelines for SB Admin 2 Template

## Build Commands
- `npm install` - Install dependencies
- `npm start` - Start development server with live reload
- `gulp` - Default task that builds everything
- `gulp watch` - Start browserSync server and watch for changes
- `gulp css` - Compile SCSS to CSS and minify
- `gulp js` - Minify JavaScript files
- `gulp vendor` - Copy dependencies from node_modules to vendor directory
- `gulp build` - Run all build tasks

## Code Style Guidelines
- Uses Bootstrap 5 framework and conventions
- SCSS for styling with component-based organization
- JavaScript follows jQuery patterns
- HTML uses Bootstrap component classes
- BEM-like naming convention for custom classes
- File organization:
  - scss/ - SCSS source files
  - css/ - Compiled CSS
  - js/ - JavaScript source files
  - vendor/ - Third-party dependencies

## Error Handling
- Check browser console for errors
- Validate HTML against Bootstrap standards
- Test responsive behavior across device sizes