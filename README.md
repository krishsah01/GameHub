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

### ⚠️ **Important: GitHub Pages Setup Required**

Before the deployment will work, you need to enable GitHub Pages for your repository:

#### Step 1: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click on **Settings** tab
3. Scroll down to **Pages** section in the left sidebar
4. Under **Source**, select **"GitHub Actions"**
5. Save the changes

#### Step 2: Trigger Deployment
Once GitHub Pages is enabled, the deployment workflow will automatically trigger when you:
- Push to the `main` branch
- Manually trigger it from the Actions tab

#### Step 3: Access Your Site
After successful deployment, your site will be available at:
```
https://[your-username].github.io/GameHub/
```

### Manual Deployment
If you need to deploy manually to another hosting provider:
```bash
npm run build
# Upload the contents of the `dist` folder to your hosting provider
```

### Troubleshooting Deployment Issues

**Error: "Get Pages site failed"**
- This means GitHub Pages is not enabled for your repository
- Follow Step 1 above to enable GitHub Pages

**Error: "Not Found" during deployment**
- Ensure you have the correct permissions in your repository
- Make sure the repository is public or you have GitHub Pro for private repos with Pages

**Routes not working after deployment**
- The project includes proper SPA routing configuration for GitHub Pages
- If you still have issues, check that the base URL is correct in your browser

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
