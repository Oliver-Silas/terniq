# terniq-write/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/skills/AGENTS.md

成员清单
AGENTS.md: `terniq-write` 模块地图，说明编辑与改稿 workflow 的边界。
SKILL.md: `terniq-write` skill 定义，负责改写、润色与 CN/EN 文本一致性。

架构决策
`terniq-write` 只拥有编辑工作，不拥有研究、抓取或泛化内容生成；它的职责是让已有文本更自然、更准确。

开发规范
扩展本 skill 时，优先保护原意、保持结构稳定与 audience lock，不把它变成自由发挥写作器。

变更日志
2026-04-25: 初始化 `terniq-write` skill 骨架。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
