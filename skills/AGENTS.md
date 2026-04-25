# skills/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/AGENTS.md

成员清单
AGENTS.md: skills 目录地图，定义 8 个核心 workflow 的边界。
RESOLVER.md: skills 总路由表，定义触发词、歧义分流与常见串联关系。
terniq-check/: 代码审查与交付前验证 workflow。
terniq-design/: 前端与界面设计 workflow。
terniq-health/: Codex 环境审计 workflow。
terniq-hunt/: 系统化调试 workflow。
terniq-learn/: 研究与理解 workflow。
terniq-read/: 外部材料读取与归档 workflow。
terniq-think/: 规划与方案判断 workflow。
terniq-write/: 文本编辑与去 AI 味 workflow。

架构决策
`skills/` 是 Terniq 的产品本体。每个目录都必须拥有一个完整 workflow，而不是一个零散技巧或风格提示。

开发规范
新增 skill 时，必须先回答三件事：它解决哪段 workflow、为什么不能并入现有 skill、它的停止边界是什么。

变更日志
2026-04-25: 建立 Terniq skills 目录并登记 8 个首发 workflow。
2026-04-25: 新增 `RESOLVER.md` 作为 skills 级统一路由与串联索引。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
