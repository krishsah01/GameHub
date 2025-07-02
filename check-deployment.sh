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
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🚨 IMPORTANT: GitHub Pages Setup Required"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "If you're seeing 'Resource not accessible by integration' errors:"
echo ""
echo "1. 🔧 Enable GitHub Pages:"
echo "   → Go to your repository on GitHub"
echo "   → Click Settings tab"
echo "   → Scroll to Pages section (left sidebar)"
echo "   → Under Source, select 'GitHub Actions'"
echo "   → Click Save"
echo ""
echo "2. 📤 Push your changes:"
echo "   → git add ."
echo "   → git commit -m 'Fix deployment configuration'"
echo "   → git push origin main"
echo ""
echo "3. 👀 Monitor deployment:"
echo "   → Go to Actions tab in your repository"
echo "   → Watch the workflow run"
echo "   → Check for any remaining errors"
echo ""
echo "4. 🌐 Access your site:"
echo "   → https://[your-username].github.io/GameHub/"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "💡 Alternative: If main workflow fails, try the simple deployment:"
echo "   → Rename .github/workflows/deploy-simple.yml to deploy.yml"
echo "   → Delete the original deploy.yml"
echo "   → Push changes"
