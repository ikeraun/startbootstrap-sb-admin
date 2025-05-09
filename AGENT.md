# Agent Guidelines for SB Admin 2 Template

## Build Commands
- `npm start` - Starts the development server with gulp watch
- `gulp` - Default task running all build processes
- `gulp css` - Compile SCSS to CSS
- `gulp js` - Minify JavaScript files
- `gulp vendor` - Copy vendor dependencies from node_modules
- `gulp build` - Build all assets

## Code Style Guidelines
- This is a Bootstrap 4 admin template with custom SCSS
- Follow Bootstrap 4 component patterns and naming conventions
- SCSS variables are defined in `scss/_variables.scss`
- Global styling in `scss/_global.scss`
- Component-specific styles have their own partial files
- Use kebab-case for CSS classes (e.g., `sidebar-dark`)
- Prefix custom components with `sb-` to distinguish from Bootstrap
- Maintain responsive design patterns across breakpoints