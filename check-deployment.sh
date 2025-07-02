#!/bin/bash

# Deployment Check Script for GameHub
echo "🚀 GameHub Deployment Check"
echo "=========================="

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: Please run this script from the project root directory"
    exit 1
fi

# Check if package.json has the right name
PROJECT_NAME=$(grep '"name"' package.json | cut -d'"' -f4)
echo "📦 Project: $PROJECT_NAME"

# Check Node.js version
NODE_VERSION=$(node --version)
echo "📋 Node.js: $NODE_VERSION"

# Check if dependencies are installed
if [ ! -d "node_modules" ]; then
    echo "⚠️  Dependencies not installed. Running npm install..."
    npm install
fi

# Run build test
echo "🔨 Testing build..."
if npm run build > /dev/null 2>&1; then
    echo "✅ Build successful!"
    
    # Check if dist directory exists and has files
    if [ -d "dist" ] && [ "$(ls -A dist)" ]; then
        echo "✅ Build output directory exists and contains files"
        echo "📁 Build files:"
        ls -la dist/
    else
        echo "❌ Build output directory is empty or missing"
    fi
else
    echo "❌ Build failed! Check for errors above."
    exit 1
fi

echo ""
echo "📝 Next Steps:"
echo "1. Make sure GitHub Pages is enabled in your repository settings"
echo "2. Set Source to 'GitHub Actions' in the Pages settings"
echo "3. Push to main branch to trigger deployment"
echo "4. Check the Actions tab for deployment status"
echo ""
echo "🌐 Your site will be available at: https://[username].github.io/GameHub/"
