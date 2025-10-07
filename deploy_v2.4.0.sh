#!/bin/bash

echo "🚀 Deploying v2.4.0 - Aggressive Cache Busting for Render"

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
git commit -m "feat: Add aggressive cache busting v2.4.0 for Render

✅ FIXES: Conditional Last Update display - no more 'Starting...' on startup
✅ FIXES: Last Update only appears after first data refresh
✅ FIXES: Enhanced cache busting with deployment IDs and timestamps

- Added DEPLOYMENT_ID with unique timestamp for complete cache invalidation
- Enhanced meta tags with deployment-id and build-time
- Updated JavaScript with multi-parameter cache busting 
- Added deployment info to console logging for verification
- Clean startup state without confusing messages
- Last Update appears only after manual refresh or auto-refresh

This deployment forces complete browser cache refresh on Render production."

# Push to GitHub (triggers Render auto-deploy)
echo "🚀 Pushing to GitHub..."
git push -u origin main

echo "✅ Deployment initiated! Check Render dashboard for status."
echo "🔍 After deployment, look for:"
echo "   - Version badge: v2.4.0" 
echo "   - Console: 'Deployment ID: render-[timestamp]'"
echo "   - No 'Last Update' until first refresh"
echo "   - Clean startup with conditional timestamp display"