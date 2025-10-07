#!/bin/bash

echo "🚀 Deploying Cache Fix v2.1.0 to Render"

# Initialize git if not already done
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    git branch -M main
fi

# Add your GitHub repository (replace with your actual repo URL)
# git remote add origin https://github.com/yourusername/your-repo-name.git

# Stage all changes
echo "📝 Staging changes..."
git add .

# Commit with descriptive message
echo "💾 Committing changes..."
git commit -m "feat: Add aggressive cache busting v2.1.0 for Render production

- Added APP_VERSION v2.1.0 constant for version-based cache invalidation
- Enhanced fetch URLs with version and timestamp parameters
- Added cache-busting meta tags and visual version indicator
- Implemented console logging for cache verification
- Fixed 'Last Update: Not loaded' issue on Render production

This forces complete JavaScript reload bypassing browser cache"

# Push to GitHub (triggers Render auto-deploy)
echo "🚀 Pushing to GitHub..."
git push -u origin main

echo "✅ Deployment initiated! Check Render dashboard for status."
echo "🔍 After deployment, look for version v2.1.0 badge on your app"