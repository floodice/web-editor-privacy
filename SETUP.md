# 设置指南 / Setup Guide

本指南将帮助您将隐私政策页面部署到 GitHub Pages。

This guide will help you deploy the privacy policy page to GitHub Pages.

## 📋 步骤 / Steps

### 1️⃣ 创建 GitHub 仓库 / Create GitHub Repository

1. 登录 GitHub 账号 / Login to GitHub
2. 点击右上角的 `+` 号，选择 `New repository` / Click `+` in the top right, select `New repository`
3. 仓库名称 / Repository name: `web-editor-privacy` (或其他名称 / or any name you prefer)
4. 选择 `Public` / Select `Public`
5. 不要勾选 "Initialize this repository with a README" / Do NOT check "Initialize this repository with a README"
6. 点击 `Create repository` / Click `Create repository`

### 2️⃣ 上传文件 / Upload Files

#### 方法 A：使用命令行 / Method A: Using Command Line

```bash
# 进入隐私政策目录
cd /Users/fenghongtao/CursorApp/plugin/privacy-policy-repo

# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: Add privacy policy page"

# 添加远程仓库（替换为您的 GitHub 仓库 URL）
git remote add origin https://github.com/你的用户名/web-editor-privacy.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

#### 方法 B：使用 GitHub 网页界面 / Method B: Using GitHub Web Interface

1. 在 GitHub 仓库页面点击 `Add file` → `Upload files`
2. 将以下文件拖拽上传：
   - `privacy-policy.html`
   - `README.md`
   - `LICENSE`
   - `.gitignore`
3. 点击 `Commit changes`

### 3️⃣ 启用 GitHub Pages / Enable GitHub Pages

1. 在 GitHub 仓库页面，点击 `Settings` / Click `Settings`
2. 在左侧菜单找到 `Pages` / Find `Pages` in the left sidebar
3. 在 `Source` 下拉菜单中选择：
   - Branch: `main` (或 `master`)
   - Folder: `/ (root)`
4. 点击 `Save` / Click `Save`
5. 等待几分钟，GitHub Pages 会自动部署 / Wait a few minutes for GitHub Pages to deploy

### 4️⃣ 获取隐私政策 URL / Get Privacy Policy URL

部署完成后，您的隐私政策页面 URL 将是：

After deployment, your privacy policy page URL will be:

```
https://你的用户名.github.io/web-editor-privacy/privacy-policy.html
```

例如 / For example:
```
https://john.github.io/web-editor-privacy/privacy-policy.html
```

### 5️⃣ 在 Chrome Web Store 中使用 / Use in Chrome Web Store

1. 打开 Chrome Web Store 开发者控制台 / Open Chrome Web Store Developer Dashboard
2. 选择您的扩展 / Select your extension
3. 进入 `隐私权` 标签 / Go to `Privacy` tab
4. 在 `隐私政策 URL` 字段填入：
   ```
   https://你的用户名.github.io/web-editor-privacy/privacy-policy.html
   ```
5. 填写其他必填字段（参考 STORE_LISTING.md）/ Fill in other required fields (refer to STORE_LISTING.md)
6. 保存更改 / Save changes

## 🔄 更新隐私政策 / Update Privacy Policy

如果需要更新隐私政策：

If you need to update the privacy policy:

1. 修改 `privacy-policy.html` 文件 / Modify `privacy-policy.html`
2. 更新 "最后更新日期" / Update "Last Updated" date
3. 提交更改到 GitHub / Commit changes to GitHub

```bash
git add privacy-policy.html
git commit -m "Update privacy policy"
git push
```

GitHub Pages 会自动更新页面（可能需要几分钟）。

GitHub Pages will automatically update the page (may take a few minutes).

## ✅ 验证部署 / Verify Deployment

1. 在浏览器中打开隐私政策 URL / Open privacy policy URL in browser
2. 测试中英文切换功能 / Test Chinese/English language switching
3. 确认所有内容正确显示 / Confirm all content displays correctly
4. 在不同设备上测试响应式设计 / Test responsive design on different devices

## 🎯 自定义域名（可选）/ Custom Domain (Optional)

如果您想使用自定义域名：

If you want to use a custom domain:

1. 在 GitHub Pages 设置中添加自定义域名 / Add custom domain in GitHub Pages settings
2. 在您的域名提供商处配置 DNS / Configure DNS at your domain provider
3. 详细步骤参考：https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site

## 📧 需要帮助？ / Need Help?

如有问题，请联系：

If you have any questions, please contact:

- 📧 Email: pingloop4app@gmail.com

## 🎉 完成！ / Done!

现在您的隐私政策页面已经在线了！

Your privacy policy page is now live!

