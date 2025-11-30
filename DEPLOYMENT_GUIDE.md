# 🚀 GitHub Stats Deployment Guide for LOKESH M

## 📋 Prerequisites

1. GitHub Account: `lokeshloki65`
2. Vercel Account: `lokeshm152005`
3. GitHub Personal Access Token (PAT)

---

## 🔑 Step 1: Generate GitHub Personal Access Token

1. Go to: https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Give it a name: `GitHub Stats API`
4. Select scopes:
   - ✅ `read:user`
   - ✅ `repo`
5. Click "Generate token"
6. **IMPORTANT:** Copy the token immediately (you won't see it again!)

---

## 📦 Step 2: Prepare Your Repository

### Option A: Create New Repository

1. Go to: https://github.com/new
2. Repository name: `github-stats-api`
3. Description: `My personal GitHub statistics API`
4. Set to **Public**
5. Click "Create repository"

### Option B: Use Existing Repository

1. Open Terminal/Command Prompt
2. Navigate to: `D:\Downloads\lokeshloki65-master\lokeshloki65-master`
3. Run these commands:

```bash
# Initialize git (if not already done)
git init

# Add all files
git add .

# Commit files
git commit -m "Initial commit: GitHub Stats API setup"

# Add remote (replace with your actual repo URL)
git remote add origin https://github.com/lokeshloki65/github-stats-api.git

# Push to GitHub
git branch -M main
git push -u origin main
```

---

## ☁️ Step 3: Deploy to Vercel

### Method 1: Vercel Dashboard (Recommended)

1. Go to: https://vercel.com
2. Sign in with GitHub (use account: `lokeshm152005`)
3. Click "Add New" → "Project"
4. Import your repository: `lokeshloki65/github-stats-api`
5. Configure project:
   - **Framework Preset:** Other
   - **Root Directory:** `./`
   - **Build Command:** Leave empty
   - **Output Directory:** Leave empty

6. **IMPORTANT - Add Environment Variable:**
   - Click "Environment Variables"
   - Add variable:
     - **Name:** `PAT_1`
     - **Value:** [Paste your GitHub token here]
     - Apply to: All environments
   
7. Click "Deploy"
8. Wait for deployment to complete (1-2 minutes)
9. Your API URL will be: `https://your-project-name.vercel.app`

### Method 2: Vercel CLI

```bash
# Install Vercel CLI
npm install -g vercel

# Login to Vercel
vercel login

# Deploy
vercel

# Add environment variable
vercel env add PAT_1

# Redeploy with environment variable
vercel --prod
```

---

## ✅ Step 4: Test Your Deployment

After deployment, test these URLs (replace `YOUR_VERCEL_URL` with your actual URL):

### Basic Stats Card
```
https://YOUR_VERCEL_URL/api?username=lokeshloki65
```

### Stats Card with Theme
```
https://YOUR_VERCEL_URL/api?username=lokeshloki65&theme=tokyonight
```

### Stats with All Commits
```
https://YOUR_VERCEL_URL/api?username=lokeshloki65&include_all_commits=true
```

### Top Languages Card
```
https://YOUR_VERCEL_URL/api/top-langs?username=lokeshloki65&layout=compact
```

---

## 🎨 Step 5: Add to Your GitHub Profile

Update your README file with your new stats:

```markdown
## 📊 GitHub Statistics

<p align="center">
  <img src="https://YOUR_VERCEL_URL/api?username=lokeshloki65&show_icons=true&theme=tokyonight&hide_border=true" alt="GitHub Stats" />
</p>

<p align="center">
  <img src="https://YOUR_VERCEL_URL/api/top-langs?username=lokeshloki65&layout=compact&theme=tokyonight&hide_border=true" alt="Top Languages" />
</p>
```

---

## 🔧 Customization Options

### Themes
- `tokyonight`
- `dark`
- `radical`
- `merko`
- `gruvbox`
- `onedark`
- `cobalt`
- `synthwave`
- `highcontrast`
- `dracula`

### Parameters
- `hide=stars,commits,prs,issues` - Hide specific stats
- `show_icons=true` - Show icons
- `theme=dark` - Apply theme
- `title_color=hex` - Custom title color
- `text_color=hex` - Custom text color
- `bg_color=hex` - Custom background color
- `hide_border=true` - Hide border
- `include_all_commits=true` - Include all commits
- `card_width=500` - Set card width

### Example with Custom Colors
```
https://YOUR_VERCEL_URL/api?username=lokeshloki65&show_icons=true&title_color=00d9ff&text_color=ffffff&bg_color=0d1117&hide_border=true
```

---

## 🐛 Troubleshooting

### Issue: Stats not showing
**Solution:** 
1. Check if your Vercel deployment is successful
2. Verify environment variable `PAT_1` is set correctly
3. Check GitHub token permissions

### Issue: "Could not fetch user"
**Solution:**
- Verify username is correct: `lokeshloki65`
- Check if GitHub profile is public

### Issue: Rate limit errors
**Solution:**
- Add multiple tokens: `PAT_1`, `PAT_2`, `PAT_3`
- Each token increases rate limit

### Issue: Slow loading
**Solution:**
- Use `&cache_seconds=1800` parameter (30 minutes cache)
- Consider using Vercel's Edge Network

---

## 📝 Environment Variables Reference

| Variable | Required | Description |
|----------|----------|-------------|
| `PAT_1` | Yes | Primary GitHub Personal Access Token |
| `PAT_2` | No | Secondary token for better rate limits |
| `PAT_3` | No | Tertiary token for even better rate limits |
| `FETCH_MULTI_PAGE_STARS` | No | Set to `true` to fetch all starred repos |
| `EXCLUDED_REPOS` | No | Comma-separated list of repos to exclude |

---

## 🔒 Security Best Practices

1. **Never commit your .env file**
   - Already added to `.gitignore`
   
2. **Use environment variables in Vercel**
   - Never hardcode tokens in code
   
3. **Rotate tokens regularly**
   - Generate new tokens every 3-6 months
   
4. **Limit token scope**
   - Only grant necessary permissions

---

## 📚 Additional Resources

- [GitHub API Documentation](https://docs.github.com/en/rest)
- [Vercel Documentation](https://vercel.com/docs)
- [GitHub Token Guide](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

---

## 💡 Quick Commands Reference

```bash
# Install dependencies
npm install

# Run locally for testing
npm run dev

# Run tests
npm test

# Deploy to Vercel
vercel --prod

# Check Vercel logs
vercel logs
```

---

## 📬 Support

If you encounter issues:
1. Check Vercel deployment logs
2. Verify environment variables
3. Test with: `https://YOUR_VERCEL_URL/api/status/up`
4. Review GitHub API rate limits

---

## ✨ You're All Set!

Your GitHub Stats API should now be live at:
- **Main URL:** `https://[your-project].vercel.app`
- **Stats API:** `https://[your-project].vercel.app/api?username=lokeshloki65`

Happy coding! 🚀

---

**Created by:** LOKESH M (@lokeshloki65)
**Last Updated:** November 30, 2025
