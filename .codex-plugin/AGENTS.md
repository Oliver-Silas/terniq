# .codex-plugin/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/AGENTS.md

成员清单
AGENTS.md: 插件清单目录地图，说明 manifest 的职责边界。
plugin.json: Terniq Codex 插件 manifest，定义插件元数据、技能入口与展示信息。

架构决策
`.codex-plugin/` 只保留 Codex 插件分发所需的最小清单文件，避免把 workflow 逻辑塞入 manifest 层。

开发规范
调整 `plugin.json` 的名称、描述、接口能力或技能入口时，同步检查 README 与设计文档是否仍然一致。

变更日志
2026-04-25: 初始化 Terniq 插件 manifest 目录。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
