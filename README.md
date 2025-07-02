# GameHub

A collection of classic games built with React and Vite.

## Games Included

- **Rock Paper Scissors** - Multiplayer online game
- **Tic Tac Toe** - Multiplayer online game  
- **Wordle** - Word guessing game
- **Snake** - Classic snake game
- **Hangman** - Word guessing with hangman graphics

## Development

### Prerequisites
- Node.js 18 or higher
- npm

### Setup
```bash
npm install
npm run dev
```

### Building
```bash
npm run build
```

### Preview Production Build
```bash
npm run preview
```

## Deployment

This project is configured for deployment to GitHub Pages using GitHub Actions. The deployment workflow will automatically trigger when you push to the `main` branch.

### GitHub Pages Setup
1. Go to your repository settings
2. Navigate to Pages section
3. Set Source to "GitHub Actions"
4. Push to main branch to trigger deployment

### Manual Deployment
If you need to deploy manually:
```bash
npm run build
# Upload the contents of the `dist` folder to your hosting provider
```

## Features

- **Responsive Design** - Works on desktop and mobile
- **Multiplayer Support** - Some games support online multiplayer via API
- **Modern UI** - Built with modern React patterns and CSS
- **Fast Loading** - Optimized build with Vite

## Technology Stack

- **Frontend**: React 19, React Router
- **Build Tool**: Vite
- **Styling**: CSS3
- **3D Graphics**: Three.js (for visual effects)
- **HTTP Client**: Axios
- **Deployment**: GitHub Pages

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is open source and available under the MIT License.
