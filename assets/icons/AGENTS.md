# assets/icons/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/assets/AGENTS.md

成员清单
AGENTS.md: 图标导出目录地图，说明 favicon 与 app icon 多尺寸资源边界。
favicon-16x16.png: 浏览器 favicon 小尺寸导出。
favicon-32x32.png: 浏览器 favicon 标准尺寸导出。
apple-touch-icon.png: Apple 设备主屏图标导出。
icon-128.png: 插件或应用中等尺寸图标导出。
icon-192.png: Web app 常用图标导出。
icon-256.png: 高分辨率通用图标导出。
icon-512.png: 大尺寸商店与分享图标导出。
favicon.ico: Windows 与浏览器兼容 ico 图标。
terniq.icns: macOS `icns` 图标资源。

架构决策
`icons/` 只存从主 logo 派生的导出结果，不重复承载品牌设计源文件，保持单一真相源为 `../terniq-logo.png`。

开发规范
更新主 logo 后，重新导出整套尺寸，保持文件名稳定，避免 README 与插件清单反复漂移。

变更日志
2026-04-25: 初始化 `icons/` 并导出多尺寸 favicon 与 app icon 资源。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
