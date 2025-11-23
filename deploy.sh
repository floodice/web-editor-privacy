#!/bin/bash

# 网页编辑器隐私政策 - GitHub 部署脚本
# Web Editor Privacy Policy - GitHub Deployment Script

echo "╔═══════════════════════════════════════════════════════════════╗"
echo "║                                                               ║"
echo "║         🚀 网页编辑器隐私政策 - GitHub 部署                    ║"
echo "║            Web Editor Privacy Policy - GitHub Deploy          ║"
echo "║                                                               ║"
echo "╚═══════════════════════════════════════════════════════════════╝"
echo ""

# 检查 Git 是否已安装
if ! command -v git &> /dev/null; then
    echo "❌ 错误: 未安装 Git"
    echo "❌ Error: Git is not installed"
    echo ""
    echo "请先安装 Git: https://git-scm.com/downloads"
    echo "Please install Git first: https://git-scm.com/downloads"
    exit 1
fi

# 检查是否已经初始化 Git
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 仓库..."
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git 仓库初始化完成"
    echo ""
fi

# 询问 GitHub 仓库 URL
echo "请输入您的 GitHub 仓库 URL:"
echo "Please enter your GitHub repository URL:"
echo "例如 / Example: https://github.com/yourusername/web-editor-privacy.git"
read -p "> " repo_url

if [ -z "$repo_url" ]; then
    echo "❌ 错误: 仓库 URL 不能为空"
    echo "❌ Error: Repository URL cannot be empty"
    exit 1
fi

# 检查是否已经添加了 remote
if git remote | grep -q "origin"; then
    echo "⚠️  检测到已存在的 remote，将更新 URL..."
    echo "⚠️  Existing remote detected, updating URL..."
    git remote set-url origin "$repo_url"
else
    echo "🔗 添加 remote..."
    echo "🔗 Adding remote..."
    git remote add origin "$repo_url"
fi

# 添加所有文件
echo ""
echo "📝 添加文件到 Git..."
echo "📝 Adding files to Git..."
git add .

# 提交
echo ""
echo "💾 提交更改..."
echo "💾 Committing changes..."
git commit -m "Initial commit: Add privacy policy page" || {
    echo "⚠️  没有新的更改需要提交"
    echo "⚠️  No new changes to commit"
}

# 推送到 GitHub
echo ""
echo "🚀 推送到 GitHub..."
echo "🚀 Pushing to GitHub..."
git branch -M main
git push -u origin main || {
    echo ""
    echo "❌ 推送失败。可能的原因："
    echo "❌ Push failed. Possible reasons:"
    echo "   1. GitHub 仓库不存在 / Repository doesn't exist"
    echo "   2. 没有推送权限 / No push permission"
    echo "   3. 需要先在 GitHub 上创建仓库 / Need to create repository on GitHub first"
    echo ""
    exit 1
}

echo ""
echo "╔═══════════════════════════════════════════════════════════════╗"
echo "║                                                               ║"
echo "║                ✅ 部署成功！ / Deploy Successful!              ║"
echo "║                                                               ║"
echo "╚═══════════════════════════════════════════════════════════════╝"
echo ""
echo "🎉 接下来的步骤 / Next Steps:"
echo ""
echo "1️⃣  启用 GitHub Pages / Enable GitHub Pages"
echo "   • 打开 GitHub 仓库 / Open GitHub repository"
echo "   • Settings → Pages"
echo "   • Source: main (root)"
echo "   • 点击 Save / Click Save"
echo ""
echo "2️⃣  等待 2-5 分钟部署完成 / Wait 2-5 minutes for deployment"
echo ""
echo "3️⃣  您的隐私政策 URL 将是 / Your privacy policy URL will be:"
echo "   https://[username].github.io/[repo-name]/privacy-policy.html"
echo ""
echo "4️⃣  在 Chrome Web Store 中使用这个 URL"
echo "   Use this URL in Chrome Web Store"
echo ""
echo "📖 详细步骤请参考 SETUP.md"
echo "📖 See SETUP.md for detailed instructions"
echo ""

