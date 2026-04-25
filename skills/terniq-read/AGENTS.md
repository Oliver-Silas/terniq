# terniq-read/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/skills/AGENTS.md

成员清单
AGENTS.md: `terniq-read` 模块地图，说明外部材料读取与保存 workflow 的边界。
SKILL.md: `terniq-read` skill 定义，负责 URL/PDF 取回、归一化与保存报告。

架构决策
`terniq-read` 是 ingestion workflow，不负责研究总结；它负责把外部材料变成可用输入。

开发规范
扩展本 skill 时，优先明确路由、保存策略与停止边界，不把解释和分析混进来。

变更日志
2026-04-25: 初始化 `terniq-read` skill 骨架。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
