#!/bin/bash

# Deploy Script untuk Dr. Zahari Website
# Jalankan script ini di komputer lokal Anda setelah download project

echo "🚀 Dr. Zahari Website Deployment Script"
echo "========================================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git tidak terinstall. Install git terlebih dahulu."
    exit 1
fi

# Check if node is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js tidak terinstall. Install Node.js terlebih dahulu."
    exit 1
fi

echo "✅ Prerequisites check passed"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ Failed to install dependencies"
    exit 1
fi

# Test build
echo "🔨 Testing build..."
npm run build

if [ $? -ne 0 ]; then
    echo "❌ Build failed. Please check for errors."
    exit 1
fi

echo "✅ Build successful"

# Git setup
echo "📋 Setting up git repository..."

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Add all files
git add .

# Commit
git commit -m "Initial commit - Dr. Zahari website"

echo "✅ Files committed to git"

echo ""
echo "🎉 Setup Complete!"
echo "==================="
echo ""
echo "Next steps:"
echo "1. Create a new repository on GitHub"
echo "2. Add remote origin:"
echo "   git remote add origin https://github.com/username/dr-zahari-website.git"
echo "3. Push to GitHub:"
echo "   git push -u origin main"
echo "4. Connect to Cloudflare Pages:"
echo "   - Go to dash.cloudflare.com"
echo "   - Pages → Create project → Connect to Git"
echo "   - Select your repository"
echo "   - Build settings:"
echo "     * Framework: Next.js"
echo "     * Build command: npm run build"
echo "     * Output directory: out"
echo ""
echo "📚 For detailed instructions, see README.md and DEPLOYMENT.md"