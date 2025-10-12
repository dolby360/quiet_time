# Little Choices 
## How to run? 🚀
```bash
# Step 1: Install (one time)
make install
# Step 2: Run the site
make serve
# Step 3: Open in browser
# http://127.0.0.1:8000
```
That's it! The site is running on your computer 🎉

## What is it? 🤔
**Little Choices** is a community website for Heabrow readers parents looking for quality recommendations on:
📚 Books | 🎬 Movies | 🎮 Video Games | 🎲 Board Games | 🎓 Educational Games | 📱 Apps

All recommendations are organized in a table and based on real parenting experience.

## Deploying to GitHub Pages 🚀

To deploy the MkDocs site to GitHub Pages:

```bash
# Deploy using the Makefile (recommended)
make deploy

# Or use mkdocs directly
mkdocs gh-deploy
```

**What this does:**
- Builds the static site from your `docs` folder
- Creates/updates a `gh-pages` branch with the built site
- Pushes the `gh-pages` branch to GitHub

**First-time setup:**
1. Run `make deploy` or `mkdocs gh-deploy` to create the `gh-pages` branch
2. Go to repository Settings → Pages
3. Set "Source" to "Deploy from a branch"
4. Select the `gh-pages` branch and `/ (root)` folder
5. Click Save
6. Your site will be published at: `https://dolby360.github.io/quiet_time/`

**Note:** The `site` folder in the master branch is for local preview only. GitHub Pages serves from the `gh-pages` branch.

## Useful commands 🛠️
```bash
make help      # List all commands
make build     # Build the site
make clean     # Clean up
make deploy    # Deploy to GitHub Pages
```

## Want to contribute? 🤝
1. Fork the project
2. Add your recommendations
3. Submit a Pull Request
4. You're awesome! 🌟

## Technologies 💻
- **MkDocs** - Static site generator
- **Material for MkDocs** - Beautiful design theme (with RTL support!)
- **GitHub Pages** - Free hosting

## License 📄
MIT - Use freely, share with love!

---
**Built with love by parents, for parents** 💝
