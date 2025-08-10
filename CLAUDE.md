# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Essential Development Commands

### Development Server
- `gleam run -m lustre/dev start` - Start the development server with hot reload
- The development server automatically watches for file changes and rebuilds the application

### Building for Production
- `gleam run -m lustre/dev build app --minify` - Build minified production bundle
- Output files are generated in `priv/static/` directory

### Basic Commands
- `gleam deps download` - Download/install dependencies
- `gleam run` - Run the application
- `gleam build` - Compile the application

## Project Architecture

### MVU (Model-View-Update) Pattern
This project follows the Elm-inspired MVU architecture pattern:

- **Model**: Application state is centralized in the `Route` type (Home | About)
- **View**: Pure functions that take the model and return HTML elements
- **Update**: Single update function processes all messages and returns new state + effects
- **Effects**: Side effects are managed through Lustre's effect system

### Application Structure
- `src/app.gleam`: Main application entry point with routing, MVU implementation
- `src/pages/`: Page components (stateless view functions)
- `src/ui/`: Reusable UI components (layout, header)
- `priv/static/`: Static assets (CSS, compiled JavaScript)

### Routing System
- Uses `modem` library for URL-based routing
- Route parsing in `parse_route` function handles URL path segments
- Single-page application with client-side navigation

### Component Patterns
- **View Functions**: Simple functions returning `Element(Msg)` for reusable UI
- **Layout System**: Hierarchical layout with header and content areas using CSS Grid
- **State Management**: All state flows through the central MVU cycle

### Key Dependencies
- `lustre`: Core framework (Elm-like architecture for Gleam)
- `modem`: Client-side routing
- `lustre_dev_tools`: Development tooling and hot reload

## Development Notes

### Adding New Pages
1. Create new view function in `src/pages/`
2. Add route variant to `Route` type in `app.gleam`
3. Update `parse_route` function for URL mapping
4. Add case in main `view` function

### Styling
- Uses Tailwind CSS classes throughout the codebase
- CSS is loaded via `priv/static/app.css`
- Component styling is done through `attribute.class()` calls