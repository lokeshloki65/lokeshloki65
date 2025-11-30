# ⚡ Quick Reference Guide - LOKESH M

## 🔗 Important Links

| Purpose | URL |
|---------|-----|
| 🐙 **Your GitHub Profile** | https://github.com/lokeshloki65 |
| 📊 **Your Repository** | https://github.com/lokeshloki65/github-stats-api |
| ☁️ **Vercel Dashboard** | https://vercel.com/dashboard |
| 🔑 **GitHub Tokens** | https://github.com/settings/tokens |
| 🌐 **Your Portfolio** | https://lokeshloki.site |

---

## 🚀 Quick Commands

### Git Commands
```bash
# Check status
git status

# Add all files
git add .

# Commit with message
git commit -m "Your message here"

# Push to GitHub
git push origin main

# Pull latest changes
git pull origin main

# View commit history
git log --oneline
```

### NPM Commands
```bash
# Install dependencies
npm install

# Run tests
npm test

# Run in development mode
npm run dev

# Check for outdated packages
npm outdated

# Update packages
npm update
```

### Vercel Commands
```bash
# Install Vercel CLI
npm install -g vercel

# Login
vercel login

# Deploy (development)
vercel

# Deploy (production)
vercel --prod

# View logs
vercel logs

# List environment variables
vercel env ls

# Add environment variable
vercel env add PAT_1

# Remove deployment
vercel remove [deployment-url]
```

---

## 📊 API Endpoints Quick Reference

### Stats Card
```
https://YOUR_URL/api?username=lokeshloki65
```

### With Theme
```
https://YOUR_URL/api?username=lokeshloki65&theme=tokyonight
```

### Custom Colors (Your Brand Colors)
```
https://YOUR_URL/api?username=lokeshloki65
&show_icons=true
&title_color=00d9ff
&text_color=ffffff
&bg_color=0d1117
&icon_color=00d9ff
&hide_border=true
```

### Top Languages - Compact
```
https://YOUR_URL/api/top-langs?username=lokeshloki65
&layout=compact
&theme=tokyonight
```

### Top Languages - Donut Chart
```
https://YOUR_URL/api/top-langs?username=lokeshloki65
&layout=donut
&theme=tokyonight
```

### All Commits Count
```
https://YOUR_URL/api?username=lokeshloki65
&include_all_commits=true
```

### Hide Specific Stats
```
https://YOUR_URL/api?username=lokeshloki65
&hide=stars,commits,prs,issues
```

### Health Check
```
https://YOUR_URL/api/status/up
```

---

## 🎨 Popular Themes

```
tokyonight    - Dark blue theme (Recommended for you!)
dark          - Simple dark theme
radical       - Purple/pink gradient
dracula       - Dracula color scheme
monokai       - Monokai colors
gruvbox       - Retro warm colors
onedark       - One Dark Pro theme
cobalt        - Blue theme
synthwave     - Retro synthwave
highcontrast  - High contrast
```

### How to Use:
```
&theme=tokyonight
&theme=dark
&theme=radical
```

---

## 🔧 Common Parameters

| Parameter | Values | Example |
|-----------|--------|---------|
| `show_icons` | true/false | `&show_icons=true` |
| `hide_border` | true/false | `&hide_border=true` |
| `hide_title` | true/false | `&hide_title=true` |
| `hide_rank` | true/false | `&hide_rank=true` |
| `include_all_commits` | true/false | `&include_all_commits=true` |
| `count_private` | true/false | `&count_private=true` |
| `card_width` | number | `&card_width=500` |
| `cache_seconds` | number | `&cache_seconds=1800` |
| `title_color` | hex | `&title_color=00d9ff` |
| `text_color` | hex | `&text_color=ffffff` |
| `bg_color` | hex | `&bg_color=0d1117` |
| `icon_color` | hex | `&icon_color=00d9ff` |
| `border_color` | hex | `&border_color=00d9ff` |

---

## 📱 Markdown Templates

### Basic Stats
```markdown
![GitHub Stats](https://YOUR_URL/api?username=lokeshloki65&show_icons=true)
```

### Stats + Languages Side by Side
```markdown
<p align="center">
  <img src="https://YOUR_URL/api?username=lokeshloki65&show_icons=true&theme=tokyonight" width="48%" />
  <img src="https://YOUR_URL/api/top-langs?username=lokeshloki65&layout=compact&theme=tokyonight" width="48%" />
</p>
```

### Your Custom Colors (Cyan Theme)
```markdown
![Stats](https://YOUR_URL/api?username=lokeshloki65&show_icons=true&title_color=00d9ff&text_color=ffffff&bg_color=0d1117&icon_color=00d9ff&hide_border=true)
```

### Centered Layout
```markdown
<div align="center">
  <img src="https://YOUR_URL/api?username=lokeshloki65&show_icons=true&theme=tokyonight" alt="Stats" />
</div>
```

---

## 🐛 Troubleshooting Quick Fixes

### Problem: Stats Not Loading
```bash
# Check Vercel deployment
vercel logs

# Verify environment variable
vercel env ls

# Test health endpoint
curl https://YOUR_URL/api/status/up
```

### Problem: Rate Limit Exceeded
**Solution:** Add more tokens
```bash
vercel env add PAT_2
vercel env add PAT_3
```

### Problem: Slow Loading
**Solution:** Add cache parameter
```
&cache_seconds=3600
```

### Problem: Wrong Stats
**Solution:** Clear cache
```
# Add random query to force refresh
&v=2
```

---

## 🔑 Environment Variables

### Required
```env
PAT_1=your_github_token_here
```

### Optional (Better Rate Limits)
```env
PAT_2=second_token_here
PAT_3=third_token_here
```

### Optional Features
```env
FETCH_MULTI_PAGE_STARS=true
EXCLUDED_REPOS=repo1,repo2
```

---

## 📞 Support Contacts

### LOKESH M
- **GitHub:** [@lokeshloki65](https://github.com/lokeshloki65)
- **Email:** lokesh152005@gmail.com
- **LinkedIn:** [lokesh-m-265b832b3](https://www.linkedin.com/in/lokesh-m-265b832b3)
- **Portfolio:** [lokeshloki.site](https://lokeshloki.site)

### Documentation
- **Setup Guide (Tamil):** SETUP_GUIDE_TAMIL.md
- **Deployment Guide:** DEPLOYMENT_GUIDE.md
- **Full README:** README_API.md
- **Project Summary:** PROJECT_SUMMARY.md
- **Checklist:** DEPLOYMENT_CHECKLIST.md

---

## 📊 Your Information

**Fill in your details after deployment:**

```
Vercel Project URL: https://_____________________.vercel.app
GitHub Repo URL: https://github.com/lokeshloki65/github-stats-api
Deployment Date: _______________
Status: ⭕ Pending / ✅ Deployed
```

---

## 🎯 Quick Testing URLs

**Replace YOUR_URL with your actual Vercel URL**

1. Health Check:
   ```
   https://YOUR_URL/api/status/up
   ```

2. Basic Stats:
   ```
   https://YOUR_URL/api?username=lokeshloki65
   ```

3. Themed Stats:
   ```
   https://YOUR_URL/api?username=lokeshloki65&theme=tokyonight
   ```

4. Top Languages:
   ```
   https://YOUR_URL/api/top-langs?username=lokeshloki65
   ```

5. Custom Colors:
   ```
   https://YOUR_URL/api?username=lokeshloki65&title_color=00d9ff&bg_color=0d1117
   ```

---

## 💡 Pro Tips

1. **Multiple Tokens = Better Rate Limits**
   - 1 token = 5,000 requests/hour
   - 3 tokens = 15,000 requests/hour

2. **Use Cache**
   - Add `&cache_seconds=1800` for 30 min cache
   - Reduces API calls and improves speed

3. **Custom Domain**
   - Professional look: stats.yourdomain.com
   - Easier to remember

4. **Regular Updates**
   - Update packages monthly: `npm update`
   - Check for security issues: `npm audit`

5. **Monitor Performance**
   - Check Vercel Analytics
   - Review logs regularly: `vercel logs`

---

## 🚀 Useful Keyboard Shortcuts

### VS Code / Code Editor
```
Ctrl + S          - Save file
Ctrl + `          - Open terminal
Ctrl + P          - Quick open file
Ctrl + Shift + P  - Command palette
Ctrl + /          - Toggle comment
Ctrl + D          - Select next match
```

### Terminal / Command Prompt
```
Ctrl + C          - Stop current process
Ctrl + L          - Clear screen
↑ / ↓             - Previous/Next command
Tab               - Auto-complete
Ctrl + R          - Search history
```

---

## 📚 Learning Resources

### Official Docs
- GitHub API: https://docs.github.com/en/rest
- Vercel: https://vercel.com/docs
- Node.js: https://nodejs.org/docs

### Community
- GitHub Discussions: Your repo discussions tab
- Stack Overflow: Search for "github-readme-stats"
- Dev.to: Search for deployment guides

---

## ✅ Quick Health Check

Run these to verify everything is working:

```bash
# 1. Check Node.js
node --version

# 2. Check Git
git --version

# 3. Check NPM
npm --version

# 4. Check Vercel CLI
vercel --version

# 5. Check if in correct directory
pwd  # Linux/Mac
cd   # Windows

# 6. Check git status
git status

# 7. Test API locally
npm run dev
```

---

## 🎨 Color Codes for Your Theme

Your brand colors (Cyan/Blue):
```
Primary Cyan:     #00D9FF
Background Dark:  #0D1117
Text White:       #FFFFFF
Border Cyan:      #00D9FF
Icon Cyan:        #00D9FF
```

Copy-paste ready:
```
&title_color=00D9FF
&text_color=FFFFFF
&bg_color=0D1117
&icon_color=00D9FF
&border_color=00D9FF
&hide_border=true
```

---

<p align="center">
  <b>⚡ Keep this guide handy for quick reference! ⚡</b>
</p>

---

**Last Updated:** November 30, 2025  
**Version:** 1.0.0  
**Created by:** LOKESH M
