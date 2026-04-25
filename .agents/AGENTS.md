# .agents/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/AGENTS.md

成员清单
AGENTS.md: `.agents/` 层级地图，说明本地 marketplace 包装与内部分发元数据。
plugins/: 本地 marketplace 元数据目录，承载 `marketplace.json` 与插件上架顺序。

架构决策
`.agents/` 不承载产品逻辑，只承载 Codex 开发态安装与分发所需的包装元数据，避免污染真正的插件根。

开发规范
调整 marketplace 名称、展示信息、插件来源路径或安装策略时，同步检查 README 的安装说明是否仍然准确。

变更日志
2026-04-25: 初始化 `.agents/` 目录，作为 Terniq 的本地 Codex marketplace 包装层。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
