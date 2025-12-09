#!/bin/bash

# GitHub Stats API - Quick Setup Script
# Author: LOKESH M (@lokeshloki65)
 
echo "🚀 GitHub Stats API - Quick Setup"
echo "==============================="
echo " " 

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo -e "${RED}❌ Git is not installed. Please install Git first.${NC}"
    exit 1
fi

echo -e "${BLUE}📦 Step 1: Installing dependencies...${NC}"
npm install
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Dependencies installed successfully!${NC}"
else
    echo -e "${RED}❌ Failed to install dependencies.${NC}"
    exit 1
fi

echo ""
echo -e "${BLUE}🔑 Step 2: Setting up environment variables...${NC}"
if [ ! -f .env ]; then
    cp .env.example .env
    echo -e "${YELLOW}⚠️  Please edit .env file and add your GitHub Personal Access Token${NC}"
    echo -e "${YELLOW}   Get your token from: https://github.com/settings/tokens${NC}"
else
    echo -e "${GREEN}✅ .env file already exists${NC}"
fi

echo ""
echo -e "${BLUE}🔧 Step 3: Git repository setup...${NC}"
read -p "Do you want to initialize/update git repository? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    if [ ! -d .git ]; then
        git init
        echo -e "${GREEN}✅ Git repository initialized${NC}"
    fi
    
    echo -e "${BLUE}Enter your GitHub repository URL (e.g., https://github.com/lokeshloki65/github-stats-api.git):${NC}"
    read repo_url
    
    if [ ! -z "$repo_url" ]; then
        git remote remove origin 2>/dev/null
        git remote add origin $repo_url
        echo -e "${GREEN}✅ Remote repository set to: $repo_url${NC}"
    fi
fi

echo ""
echo -e "${BLUE}☁️  Step 4: Vercel deployment...${NC}"
read -p "Do you want to deploy to Vercel now? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    if ! command -v vercel &> /dev/null; then
        echo -e "${YELLOW}Installing Vercel CLI...${NC}"
        npm install -g vercel
    fi
    
    echo -e "${BLUE}Running Vercel deployment...${NC}"
    vercel
    
    echo ""
    echo -e "${YELLOW}⚠️  Don't forget to add environment variable PAT_1 in Vercel dashboard!${NC}"
    echo -e "${YELLOW}   Go to: https://vercel.com/dashboard → Your Project → Settings → Environment Variables${NC}"
fi

echo ""
echo -e "${GREEN}✨ Setup Complete!${NC}"
echo ""
echo -e "${BLUE}Next Steps:${NC}"
echo "1. Add your GitHub token to .env file (if not done)"
echo "2. Set PAT_1 environment variable in Vercel dashboard"
echo "3. Test your deployment: https://your-project.vercel.app/api?username=lokeshloki65"
echo "4. Add stats to your GitHub profile README"
echo ""
echo -e "${BLUE}📚 For detailed instructions, see: DEPLOYMENT_GUIDE.md${NC}"
echo ""
echo -e "${GREEN}Happy coding! 🚀${NC}"
