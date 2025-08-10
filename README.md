# Lustre Routing Template

A web application template built with [Gleam](https://gleam.run/) and [Lustre](https://github.com/lustre-labs/lustre), featuring client-side routing.

## Quick Start

### Prerequisites

Make sure you have [Gleam](https://gleam.run/getting-started/installing/) installed on your system.

### Installation

1. Clone this repository:
```bash
git clone <repository-url>
cd lustre-ssg-template
```

2. Install dependencies:
```bash
gleam deps download
```

3. Start the development server:
```bash
gleam run -m lustre/dev start
```

The application will be available at `http://localhost:1234`

## Development

### Styling with Tailwind

This template comes with Tailwind CSS pre-configured. You can use Tailwind utility classes directly in your components:

```gleam
html.div([
  attribute.class("bg-blue-500 text-white p-4 rounded-lg shadow-md")
], [
  html.text("Styled with Tailwind!")
])
```

### Building for Production

Build a minified production bundle:
```bash
gleam run -m lustre/dev build app --minify
```

The built files will be available in the `priv/static/` directory.

## Available Commands

- `gleam deps download` - Install dependencies
- `gleam run -m lustre/dev start` - Start development server
- `gleam run -m lustre/dev build app` - Build for development
- `gleam run -m lustre/dev build app --minify` - Build for production

## License

This template is available under the MIT License. See the [LICENSE](LICENSE) file for details.
