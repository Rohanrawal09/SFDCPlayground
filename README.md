# SFDCPlayground
Practicing Salesforce Commerce Cloud


# SFRA 7.1 Development Environment Setup

This README provides detailed guidance on setting up your local development environment for Salesforce Commerce Cloud SFRA version **7.1**, including the **correct Node.js version** and related tools.

---

## 🚀 Required Node.js Version for SFRA 7.1

### ✅ Recommended Version:
> **Node.js v14.x (LTS)**  
> Preferably: `v14.21.3`

### ❌ Avoid:
- Node.js **v16.x or higher** – May lead to compatibility issues with some build scripts, Webpack, Babel, or deprecated packages.
- Node.js **v12.x or below** – Not maintained and may cause security or performance issues.

---

## 📌 Why Node.js v14 for SFRA 7.1?

SFRA 7.1 uses:
- Legacy **Webpack 4** and **Babel configurations**
- Older dev dependencies that are only tested and stable with Node 14
- Some scripts or dependencies may break or behave unexpectedly on newer Node versions

Using Node 14 ensures:
- Stable build process (`npm run compile`, `npm run watch`)
- Compatibility with Salesforce CLI tools and WebDAV
- No unexpected issues in `cartridge compilation` or `asset bundling`

---

## ⚙️ Environment Setup

### Step 1: Install Node.js v14.x

We recommend using [Node Version Manager (nvm)](https://github.com/nvm-sh/nvm) to manage multiple Node versions:

```bash
# Install nvm if not already installed
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
