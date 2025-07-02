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

This project is configured for deployment to GitHub Pages using GitHub Actions.

### 🚨 Quick Setup for GitHub Pages

**Most Common Issue**: If you see "Resource not accessible by integration" error:

1. **Enable GitHub Pages** in your repository:
   - Go to Settings → Pages
   - Set Source to **"GitHub Actions"**
   - Save changes

2. **Push your changes**:
   ```bash
   git add .
   git commit -m "Deploy to GitHub Pages"
   git push origin main
   ```

3. **Monitor deployment** in the Actions tab

### Alternative Deployment Method

If the main workflow fails:
```bash
npm run switch-deploy  # Switch to simplified workflow
git add .
git commit -m "Switch to simplified deployment"
git push origin main
```

### Manual Deployment
```bash
npm run build
# Upload the contents of the `dist` folder to your hosting provider
```

### Deployment Commands
```bash
npm run deploy          # Check deployment readiness
npm run deploy:check    # Same as above
npm run deploy:switch   # Switch to alternative workflow
```

### Your Site URL
After deployment: `https://[your-username].github.io/GameHub/`

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
