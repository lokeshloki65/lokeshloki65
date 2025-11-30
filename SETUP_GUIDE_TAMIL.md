# 🚀 GitHub Stats API - Tamil Setup Guide

## முழுமையான Setup வழிமுறைகள் - LOKESH M க்காக

---

## 📋 தேவையான முன்னதாரம்பங்கள்

✅ GitHub Account: `lokeshloki65`
✅ Vercel Account: `lokeshm152005`
✅ Git installed
✅ Node.js installed
✅ GitHub Personal Access Token

---

## 🎯 படி 1: GitHub Personal Access Token உருவாக்குதல்

### Token-ஐ எப்படி உருவாக்குவது:

1. இந்த link-க்கு போங்க: https://github.com/settings/tokens

2. **"Generate new token"** → **"Generate new token (classic)"** click செய்யுங்க

3. Token-க்கு ஒரு பெயர் கொடுங்க:
   - பெயர்: `GitHub Stats API Token`

4. **Scopes** select செய்யுங்க:
   - ✅ `read:user` - User information படிக்க
   - ✅ `repo` - Repository access-க்கு

5. **"Generate token"** button click செய்யுங்க

6. ⚠️ **மிக முக்கியம்:**
   - Token-ஐ உடனே copy செய்து வெச்சுக்கோங்க
   - இது மறுபடியும் காட்டாது!
   - Notepad-ல save செய்து வெச்சுக்கோங்க

---

## 📦 படி 2: Repository உருவாக்குதல்

### Option A: புதிய Repository உருவாக்கணுமா?

1. https://github.com/new க்கு போங்க

2. Details நிரப்புங்க:
   ```
   Repository name: github-stats-api
   Description: My personal GitHub statistics API
   Public (முக்கியம்)
   ```

3. **"Create repository"** click செய்யுங்க

### Option B: இந்த folder-ஐ GitHub-க்கு upload செய்வது எப்படி:

1. **Command Prompt அல்லது Terminal open செய்யுங்க**

2. இந்த folder-க்கு navigate செய்யுங்க:
   ```bash
   cd D:\Downloads\lokeshloki65-master\lokeshloki65-master
   ```

3. கீழே உள்ள commands-ஐ ஒன்னு ஒன்னா run செய்யுங்க:

   ```bash
   # Git initialize செய்யுங்க
   git init
   
   # எல்லா files-ஐயும் add செய்யுங்க
   git add .
   
   # Commit செய்யுங்க
   git commit -m "Initial commit: GitHub Stats API setup by LOKESH M"
   
   # GitHub repository-ஐ connect செய்யுங்க
   git remote add origin https://github.com/lokeshloki65/github-stats-api.git
   
   # Main branch-க்கு மாத்துங்க
   git branch -M main
   
   # GitHub-க்கு push செய்யுங்க
   git push -u origin main
   ```

4. உங்க GitHub username மற்றும் password கேக்கும் (அல்லது token)

---

## ☁️ படி 3: Vercel-ல Deploy செய்வது

### முறை 1: Vercel Website மூலம் (எளிதானது!)

1. **Vercel-க்கு போங்க:** https://vercel.com

2. **Sign in செய்யுங்க:**
   - "Continue with GitHub" click செய்யுங்க
   - Account: `lokeshm152005` use செய்யுங்க

3. **புதிய Project add செய்யுங்க:**
   - "Add New" button → "Project" select செய்யுங்க
   - உங்க repository `lokeshloki65/github-stats-api` select செய்யுங்க
   - "Import" click செய்யுங்க

4. **Configure Project:**
   ```
   Framework Preset: Other
   Root Directory: ./
   Build Command: (விட்டுடுங்க)
   Output Directory: (விட்டுடுங்க)
   ```

5. **⚠️ முக்கியம் - Environment Variable add செய்யுங்க:**
   - "Environment Variables" section-ல:
     - **Name:** `PAT_1`
     - **Value:** [உங்க GitHub token-ஐ paste செய்யுங்க]
     - **Environments:** All (Production, Preview, Development)
   
6. **"Deploy"** button click செய்யுங்க

7. **1-2 நிமிடங்கள் wait பண்ணுங்க...**
   - Deployment progress காணலாம்
   - Success message வரும் வரை wait பண்ணுங்க

8. **உங்க URL கிடைக்கும்:**
   - Example: `https://github-stats-api-lokesh.vercel.app`
   - இந்த URL-ஐ copy செஞ்சு வெச்சுக்கோங்க!

### முறை 2: Command Line மூலம்

```bash
# Vercel CLI install செய்யுங்க
npm install -g vercel

# Vercel-க்கு login ஆகுங்க
vercel login

# Deploy செய்யுங்க
vercel

# Environment variable add செய்யுங்க
vercel env add PAT_1
# [உங்க token-ஐ paste செய்யுங்க]

# Production-க்கு deploy செய்யுங்க
vercel --prod
```

---

## ✅ படி 4: Test செய்வது

உங்க deployment வெற்றிகரமாக முடிஞ்சதா check செய்யுங்க:

### 1. Basic Stats Card
Browser-ல இந்த URL-ஐ open செய்யுங்க:
```
https://YOUR_VERCEL_URL/api?username=lokeshloki65
```

✅ **உங்க GitHub stats card தெரியனுமா?**

### 2. Dark Theme Card
```
https://YOUR_VERCEL_URL/api?username=lokeshloki65&theme=tokyonight
```

✅ **Dark theme-ல stats தெரியனுமா?**

### 3. Top Languages
```
https://YOUR_VERCEL_URL/api/top-langs?username=lokeshloki65&layout=compact
```

✅ **உங்க programming languages chart தெரியனுமா?**

### 4. Health Check
```
https://YOUR_VERCEL_URL/api/status/up
```

✅ **"Service is up and running" message வரனுமா?**

---

## 🎨 படி 5: GitHub Profile README-ல Add செய்வது

### உங்க Profile README edit செய்யுங்க:

1. https://github.com/lokeshloki65/lokeshloki65 க்கு போங்க

2. README.md file-ஐ edit செய்யுங்க

3. கீழே உள்ள code-ஐ add செய்யுங்க:

```markdown
## 📊 My GitHub Statistics

<p align="center">
  <img src="https://YOUR_VERCEL_URL/api?username=lokeshloki65&show_icons=true&count_private=true&theme=tokyonight&hide_border=true&bg_color=0D1117&title_color=00D9FF&icon_color=00D9FF&text_color=FFFFFF" alt="GitHub Stats" width="49%" />
  <img src="https://YOUR_VERCEL_URL/api/top-langs?username=lokeshloki65&layout=compact&theme=tokyonight&hide_border=true&bg_color=0D1117&title_color=00D9FF&text_color=FFFFFF&langs_count=8" alt="Top Languages" width="49%" />
</p>
```

⚠️ **நினைவில் வெச்சுக்கோங்க:** `YOUR_VERCEL_URL`-ஐ உங்க actual Vercel URL-ஆல மாத்துங்க!

---

## 🎨 Customization Options

### Available Themes:
```
tokyonight, dark, radical, merko, gruvbox, onedark, 
cobalt, synthwave, highcontrast, dracula, prussian,
monokai, vue, vue-dark, shades-of-purple, nightowl,
calm, flag-india, omni, react, jolly, maroongold,
yeblu, blueberry, slateorange, kacho_ga
```

### Custom Colors:
```markdown
?username=lokeshloki65
&title_color=00d9ff      (Title colour)
&text_color=ffffff       (Text colour)
&bg_color=0d1117         (Background colour)
&border_color=00d9ff     (Border colour)
&icon_color=00d9ff       (Icon colour)
```

### Hide Specific Stats:
```markdown
&hide=stars,commits,prs,issues
```

### Show All Commits:
```markdown
&include_all_commits=true
```

---

## 🐛 பிரச்சனைகள் மற்றும் தீர்வுகள்

### பிரச்சனை 1: Stats card காட்டல

**காரணம்:**
- Token சரியா set பண்ணல
- Vercel deployment முடியல
- Username தவறா இருக்கு

**தீர்வு:**
1. Vercel dashboard போயி Environment Variables check செய்யுங்க
2. `PAT_1` variable இருக்கா பாருங்க
3. Token value சரியா இருக்கா verify செய்யுங்க
4. Redeploy செய்துபாருங்க

### பிரச்சனை 2: "Could not fetch user" error

**தீர்வு:**
- Username correct-ah இருக்கா check செய்யுங்க: `lokeshloki65`
- GitHub profile public-ah set பண்ணியிருக்கீங்களா பாருங்க

### பிரச்சனை 3: Rate limit exceeded

**தீர்வு:**
- கூடுதல் tokens add செய்யுங்க:
  - Vercel dashboard → Environment Variables
  - `PAT_2`, `PAT_3` add செய்யுங்க
  - ஒவ்வொரு token-உம் rate limit-ஐ increase செய்யும்

### பிரச்சனை 4: Slow loading

**தீர்வு:**
```markdown
# Cache time increase செய்யுங்க (30 minutes)
&cache_seconds=1800

# All commits count disable செய்யுங்க
&include_all_commits=false
```

---

## 📝 Environment Variables Reference

Vercel dashboard-ல add செய்ய வேண்டியவை:

| Variable | Required? | Description |
|----------|-----------|-------------|
| `PAT_1` | ✅ Yes | Primary GitHub token (கட்டாயம் வேணும்) |
| `PAT_2` | ❌ No | இரண்டாவது token (rate limit-க்கு) |
| `PAT_3` | ❌ No | மூன்றாவது token (இன்னும் better rate limit) |
| `FETCH_MULTI_PAGE_STARS` | ❌ No | எல்லா starred repos-ஐயும் fetch செய்ய |

---

## 🔧 Quick Commands Reference

```bash
# Dependencies install
npm install

# Local-ல test செய்ய
npm run dev

# Tests run செய்ய
npm test

# Vercel-க்கு deploy
vercel --prod

# Logs பார்க்க
vercel logs
```

---

## 💡 கூடுதல் Tips

### 1. Multiple Accounts-க்கு:
```
# Different users-க்கு different URLs use செய்யலாம்
?username=lokeshloki65
?username=other_user
```

### 2. Custom Width:
```markdown
&card_width=500
```

### 3. Hide Border:
```markdown
&hide_border=true
```

### 4. Show Icons:
```markdown
&show_icons=true
```

### 5. Custom Title:
```markdown
&custom_title=My%20GitHub%20Stats
```

---

## ✨ முடிவு

🎉 **வாழ்த்துக்கள்!** உங்க GitHub Stats API இப்போ live-ல இருக்கு!

### உங்க URLs:
- **Main Site:** `https://[your-project].vercel.app`
- **Stats API:** `https://[your-project].vercel.app/api?username=lokeshloki65`
- **Top Languages:** `https://[your-project].vercel.app/api/top-langs?username=lokeshloki65`

### அடுத்து என்ன செய்யலாம்:
1. ✅ GitHub profile README-ல stats-ஐ add செய்யுங்க
2. ✅ Different themes-ஐ try செய்யுங்க
3. ✅ Custom colors-ஆல personalize செய்யுங்க
4. ✅ Friends-கிட்ட share செய்யுங்க!

---

## 📞 Help தேவையா?

- **GitHub Issues:** [Create an issue](https://github.com/lokeshloki65/github-stats-api/issues)
- **Email:** lokesh152005@gmail.com
- **LinkedIn:** [lokesh-m-265b832b3](https://www.linkedin.com/in/lokesh-m-265b832b3)

---

**Created by:** LOKESH M (@lokeshloki65)  
**Date:** November 30, 2025  
**Version:** 1.0.0

---

<p align="center">
  <b>Happy Coding! 🚀</b>
</p>
