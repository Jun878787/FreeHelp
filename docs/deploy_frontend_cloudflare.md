前端部署到 Cloudflare Pages（簡要步驟）

1. 將 `lanjii-admin-ui` 的程式碼推上 GitHub（或 GitLab）。
2. 在 Cloudflare Pages 建立新網站，連結到該 GitHub repository，選擇分支（通常為 `main` 或 `master`）。
3. 設定 Build 命令：`npm ci && npm run build`。
4. 設定輸出目錄：`dist`（Vite 預設輸出）。
5. 建立後 Cloudflare 會自動執行部署，完成後可設定自訂網域與 HTTPS（Cloudflare 會自動提供憑證）。

本專案本地建置測試命令：
```
cd lanjii-admin-ui
npm install
npm run build
```
