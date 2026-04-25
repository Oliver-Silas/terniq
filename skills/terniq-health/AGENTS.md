# terniq-health/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/skills/AGENTS.md

成员清单
AGENTS.md: `terniq-health` 模块地图，说明 Codex 环境审计 workflow 的边界。
SKILL.md: `terniq-health` skill 定义，负责审计 AGENTS、skills、plugins、connectors、automations 与验证纪律。

架构决策
`terniq-health` 审的是 Codex 现实，不是其他宿主的历史结构；它只关心会直接影响行为质量的环境层。

开发规范
扩展本 skill 时，优先明确审计层次、缺失数据处理与可执行修复建议，不把它膨胀成平台百科全书。

变更日志
2026-04-25: 初始化 `terniq-health` skill 骨架。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
