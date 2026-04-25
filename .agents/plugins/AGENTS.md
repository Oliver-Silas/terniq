# .agents/plugins/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/.agents/AGENTS.md

成员清单
AGENTS.md: marketplace 元数据目录地图，说明本地插件分发文件的边界。
marketplace.json: Terniq 本地 marketplace manifest，定义插件来源、展示名与安装策略。

架构决策
`marketplace.json` 作为 Codex marketplace root 的入口清单，显式把当前仓库声明成可安装插件源，而不是依赖隐式目录猜测。

开发规范
修改 `marketplace.json` 的 `plugins`、`source`、`policy` 或展示信息后，立即做一次真实 `codex plugin marketplace add` 验证。

变更日志
2026-04-25: 新增 `marketplace.json`，为 Terniq 提供本地试装入口。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
