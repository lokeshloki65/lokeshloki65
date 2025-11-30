# 📊 GitHub Stats API

> Personal GitHub statistics API service built with Node.js and deployed on Vercel

[![Vercel](https://img.shields.io/badge/Deployed%20on-Vercel-000000?style=for-the-badge&logo=vercel)](https://vercel.com)
[![GitHub](https://img.shields.io/badge/GitHub-lokeshloki65-181717?style=for-the-badge&logo=github)](https://github.com/lokeshloki65)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

## 🌟 Features

- 📈 **GitHub Statistics Card** - Display your stats with customizable themes
- 🎨 **Multiple Themes** - Choose from 20+ beautiful themes
- 🌍 **Top Languages Card** - Show your most used programming languages
- 📌 **Repository Cards** - Pin your favorite repositories
- ⚡ **Fast & Reliable** - Deployed on Vercel's Edge Network
- 🔒 **Secure** - Environment-based token management

## 🚀 Quick Start

### Option 1: Use the Automated Setup (Recommended)

**Windows:**
```bash
setup.bat
```

**Linux/Mac:**
```bash
chmod +x setup.sh
./setup.sh
```

### Option 2: Manual Setup

1. **Install dependencies:**
```bash
npm install
```

2. **Create `.env` file:**
```bash
cp .env.example .env
```

3. **Add your GitHub token to `.env`:**
```env
PAT_1=your_github_personal_access_token_here
```

4. **Deploy to Vercel:**
```bash
npm install -g vercel
vercel
```

📖 **For detailed instructions, see:** [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md)

## 📊 Usage Examples

### Basic Stats Card

```markdown
![GitHub Stats](https://your-vercel-url.vercel.app/api?username=lokeshloki65)
```

![Example](https://github-readme-stats.vercel.app/api?username=lokeshloki65&show_icons=true&theme=tokyonight)

### Top Languages Card

```markdown
![Top Languages](https://your-vercel-url.vercel.app/api/top-langs?username=lokeshloki65&layout=compact)
```

![Example](https://github-readme-stats.vercel.app/api/top-langs?username=lokeshloki65&layout=compact&theme=tokyonight)

### With Custom Theme

```markdown
![GitHub Stats](https://your-vercel-url.vercel.app/api?username=lokeshloki65&show_icons=true&theme=tokyonight)
```

## 🎨 Available Themes

| Theme | Preview |
|-------|---------|
| `tokyonight` | ![tokyonight](https://github-readme-stats.vercel.app/api?username=lokeshloki65&theme=tokyonight&show_icons=true) |
| `dark` | ![dark](https://github-readme-stats.vercel.app/api?username=lokeshloki65&theme=dark&show_icons=true) |
| `radical` | ![radical](https://github-readme-stats.vercel.app/api?username=lokeshloki65&theme=radical&show_icons=true) |
| `dracula` | ![dracula](https://github-readme-stats.vercel.app/api?username=lokeshloki65&theme=dracula&show_icons=true) |

[View all themes →](themes/README.md)

## ⚙️ Configuration Options

### Stats Card Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `username` | string | **Required** | GitHub username |
| `show_icons` | boolean | false | Show icons for stats |
| `hide` | string | null | Comma-separated list of stats to hide |
| `hide_title` | boolean | false | Hide the title |
| `hide_border` | boolean | false | Hide the border |
| `hide_rank` | boolean | false | Hide the rank |
| `include_all_commits` | boolean | false | Include all commits (not just current year) |
| `card_width` | number | 500 | Card width in pixels |
| `theme` | string | default | Theme name |
| `title_color` | hex | - | Title color |
| `text_color` | hex | - | Text color |
| `bg_color` | hex | - | Background color |
| `border_color` | hex | - | Border color |
| `cache_seconds` | number | 1800 | Cache duration in seconds |

### Top Languages Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `username` | string | **Required** | GitHub username |
| `layout` | string | default | Layout type: `default`, `compact`, `donut`, `donut-vertical`, `pie` |
| `hide` | string | null | Comma-separated list of languages to hide |
| `langs_count` | number | 5 | Number of languages to display |
| `theme` | string | default | Theme name |

## 🔧 Advanced Configuration

### Multiple Tokens for Better Rate Limits

Add multiple tokens in your Vercel environment variables:

```env
PAT_1=token_1
PAT_2=token_2
PAT_3=token_3
```

### Exclude Specific Repositories

```env
EXCLUDED_REPOS=repo1,repo2,repo3
```

### Enable Multi-Page Star Fetching

```env
FETCH_MULTI_PAGE_STARS=true
```

## 📡 API Endpoints

| Endpoint | Description |
|----------|-------------|
| `/api` | GitHub stats card |
| `/api/top-langs` | Top languages card |
| `/api/pin` | Repository pin card |
| `/api/wakatime` | WakaTime stats card |
| `/api/gist` | Gist card |
| `/api/status/up` | Health check |
| `/api/status/pat-info` | Token info |

## 🛠️ Local Development

1. **Clone the repository:**
```bash
git clone https://github.com/lokeshloki65/github-stats-api.git
cd github-stats-api
```

2. **Install dependencies:**
```bash
npm install
```

3. **Create `.env` file:**
```bash
cp .env.example .env
# Add your GitHub token to .env
```

4. **Run locally:**
```bash
npm run dev
```

5. **Open in browser:**
```
http://localhost:3000/api?username=lokeshloki65
```

## 🧪 Testing

```bash
# Run all tests
npm test

# Run tests in watch mode
npm run test:watch

# Run E2E tests
npm run test:e2e

# Generate coverage report
npm test -- --coverage
```

## 📈 Performance

- ⚡ **Average Response Time:** < 1 second
- 📦 **Cache Duration:** 30 minutes (configurable)
- 🌐 **CDN:** Vercel Edge Network
- 🔄 **Rate Limit:** 5000 requests/hour per token

## 🔒 Security

- 🔐 Environment variables for sensitive data
- 🚫 Token never exposed in client-side code
- ✅ CORS enabled for GitHub domains
- 🛡️ Rate limiting protection

## 🐛 Troubleshooting

### Stats not loading?

1. Check if your GitHub profile is public
2. Verify the username is correct: `lokeshloki65`
3. Check Vercel deployment status
4. Verify environment variable `PAT_1` is set

### Rate limit exceeded?

- Add more tokens: `PAT_1`, `PAT_2`, `PAT_3`
- Increase `cache_seconds` parameter
- Contact GitHub support for higher limits

### Slow loading?

- Increase cache duration: `&cache_seconds=3600`
- Use `&include_all_commits=false` for faster loading
- Consider reducing `langs_count`

## 📚 Documentation

- [Deployment Guide](DEPLOYMENT_GUIDE.md) - Complete deployment instructions
- [API Documentation](docs/API.md) - Detailed API reference
- [Theme Guide](themes/README.md) - All available themes
- [Contributing Guide](CONTRIBUTING.md) - How to contribute

## 🤝 Contributing

Contributions are welcome! Please read our [Contributing Guide](CONTRIBUTING.md) for details.

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**LOKESH M**
- GitHub: [@lokeshloki65](https://github.com/lokeshloki65)
- Portfolio: [lokeshloki.site](https://lokeshloki.site)
- Email: lokesh152005@gmail.com
- LinkedIn: [lokesh-m-265b832b3](https://www.linkedin.com/in/lokesh-m-265b832b3)

## 🌟 Acknowledgments

- Original concept inspired by [github-readme-stats](https://github.com/anuraghazra/github-readme-stats)
- Built with ❤️ using Node.js and Vercel
- Icons by [Simple Icons](https://simpleicons.org/)

## ⭐ Star This Repository

If you find this project useful, please consider giving it a ⭐ star on GitHub!

---

<p align="center">
  <sub>Built with ❤️ by <a href="https://github.com/lokeshloki65">LOKESH M</a></sub>
</p>

<p align="center">
  <img src="https://komarev.com/ghpvc/?username=lokeshloki65&label=Profile%20Views&color=00d9ff&style=flat-square" alt="Profile Views" />
</p>
