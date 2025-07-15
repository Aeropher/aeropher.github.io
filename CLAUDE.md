# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Jekyll-based personal blog/website hosted on GitHub Pages at https://aeropher.github.io/. It uses the Norlin theme (a dark theme) and is deployed automatically via GitHub Actions.

## Commands

### Local Development
```bash
bundle install              # Install dependencies
bundle exec jekyll serve    # Start local server at http://localhost:4000
```

### Build
```bash
bundle exec jekyll build    # Build the site to _site directory
```

### Publishing
```bash
./publish.bat              # Windows: Build and deploy to GitHub Pages
```

## Architecture & Key Files

### Configuration
- `_config.yml`: Main Jekyll configuration (permalink structure, plugins, pagination)
- `_data/settings.yml`: Site content settings (navigation, hero section, author info, social links)

### Content Structure
- `_posts/`: Blog posts with date-prefixed filenames (YYYY-MM-DD-title.md)
- `_pages/`: Static pages (about, projects, support-me, etc.)
- Special app pages: `rightnow-privacy-policy.md`, `rightnow-delete-account.md`

### Theme Customization
- `_sass/`: Organized in numbered folders (0-settings, 1-tools, 2-base, 3-modules, 4-layouts)
- `assets/js/theme-toggle.js`: Dark theme toggle functionality
- `assets/css/style.scss`: Main stylesheet entry point

### Deployment
- Manual deployment via `publish.bat` script (builds locally and pushes to GitHub)
- GitHub Actions workflow: `.github/workflows/jekyll-gh-pages.yml` (currently disabled due to minute limits)
- Site updates when changes are pushed to main branch

## Key Features to Maintain

1. **Navigation**: Updated in `_data/settings.yml` under `menu-settings.menu-items`
2. **Hero Section**: Configured in `_data/settings.yml` under `hero`
3. **Featured Posts**: Posts can be marked as featured in front matter
4. **Theme Toggle**: Dark theme toggle must remain functional
5. **Search**: Search functionality uses `search.json` for indexing

## Creating New Content

### Pages
Create in `_pages/` directory with front matter:
```yaml
---
layout: page
title: Page Title
permalink: /page-url/
---
```

### Posts
Create in `_posts/` with filename format `YYYY-MM-DD-title.md`:
```yaml
---
layout: post
title: Post Title
date: YYYY-MM-DD HH:MM:SS +0000
author: Alex
tags: [tag1, tag2]
featured: true/false
---
```

## Important Notes

- The site uses Font Awesome for icons
- Disqus comments are configured but may need identifier setup
- Mailchimp integration is available but needs configuration
- No testing framework or linting is currently set up
- Images go in `/images/` directory
- The site is responsive and optimized for mobile