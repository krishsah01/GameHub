#!/bin/bash

# GameHub Deployment Utility
# Usage: ./deploy.sh [check|switch|help]

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
PROJECT_NAME="gamehub"

show_help() {
    echo "🚀 GameHub Deployment Utility"
    echo "Usage: $0 [command]"
    echo ""
    echo "Commands:"
    echo "  check    - Check deployment readiness and build"
    echo "  switch   - Switch to simplified deployment workflow"
    echo "  help     - Show this help message"
    echo ""
    echo "No command: Run deployment check"
}

check_deployment() {
    echo "🚀 GameHub Deployment Check"
    echo "=========================="

    # Check if we're in the right directory
    if [ ! -f "package.json" ]; then
        echo "❌ Error: Please run this script from the project root directory"
        exit 1
    fi

    # Check Node.js version
    NODE_VERSION=$(node --version 2>/dev/null)
    if [ $? -eq 0 ]; then
        echo "✅ Node.js: $NODE_VERSION"
    else
        echo "❌ Node.js not found. Please install Node.js"
        exit 1
    fi

    # Check if dependencies are installed
    if [ ! -d "node_modules" ]; then
        echo "📦 Installing dependencies..."
        npm install
    else
        echo "✅ Dependencies installed"
    fi

    # Run build test
    echo "🔨 Testing build..."
    if npm run build > /dev/null 2>&1; then
        echo "✅ Build successful!"
        
        # Check build output
        if [ -d "dist" ] && [ "$(ls -A dist 2>/dev/null)" ]; then
            echo "✅ Build output ready for deployment"
            echo "📁 Build size: $(du -sh dist | cut -f1)"
        else
            echo "❌ Build output directory is empty or missing"
            exit 1
        fi
    else
        echo "❌ Build failed! Run 'npm run build' to see errors."
        exit 1
    fi

    echo ""
    echo "🎯 Next Steps:"
    echo "1. Enable GitHub Pages: Settings → Pages → Source: 'GitHub Actions'"
    echo "2. Push changes: git add . && git commit -m 'Deploy' && git push"
    echo "3. Monitor: Check Actions tab for deployment status"
    echo "4. Visit: https://[username].github.io/GameHub/"
}

switch_deployment() {
    echo "🔄 Switching to simplified deployment workflow..."

    if [ ! -f ".github/workflows/deploy.yml" ]; then
        echo "❌ No deployment workflow found"
        exit 1
    fi

    if [ ! -f ".github/workflows/deploy-simple.yml" ]; then
        echo "❌ Simple deployment workflow not found"
        exit 1
    fi

    # Backup and switch
    mv .github/workflows/deploy.yml .github/workflows/deploy-original.backup
    mv .github/workflows/deploy-simple.yml .github/workflows/deploy.yml

    echo "✅ Switched to simplified deployment!"
    echo "📝 Commit changes: git add . && git commit -m 'Switch to simple deploy' && git push"
}

# Main script logic
case "${1:-check}" in
    "check"|"")
        check_deployment
        ;;
    "switch")
        switch_deployment
        ;;
    "help"|"-h"|"--help")
        show_help
        ;;
    *)
        echo "❌ Unknown command: $1"
        show_help
        exit 1
        ;;
esac
