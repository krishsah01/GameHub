#!/bin/bash

# Switch to Simple Deployment Workflow
echo "🔄 Switching to simplified GitHub Pages deployment..."

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: Please run this script from the project root directory"
    exit 1
fi

# Check if workflows exist
if [ ! -f ".github/workflows/deploy.yml" ]; then
    echo "❌ Error: No deployment workflow found"
    exit 1
fi

if [ ! -f ".github/workflows/deploy-simple.yml" ]; then
    echo "❌ Error: Simple deployment workflow not found"
    exit 1
fi

# Make backup and switch
echo "📄 Backing up current workflow..."
mv .github/workflows/deploy.yml .github/workflows/deploy-original.yml.backup

echo "🔄 Switching to simple workflow..."
mv .github/workflows/deploy-simple.yml .github/workflows/deploy.yml

echo "✅ Switched to simplified deployment workflow!"
echo ""
echo "📝 Next steps:"
echo "1. git add ."
echo "2. git commit -m 'Switch to simplified deployment workflow'"
echo "3. git push origin main"
echo "4. Check Actions tab for deployment status"
echo ""
echo "💡 To switch back:"
echo "   mv .github/workflows/deploy-original.yml.backup .github/workflows/deploy.yml"
