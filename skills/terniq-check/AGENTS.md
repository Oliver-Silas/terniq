# terniq-check/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/skills/AGENTS.md

成员清单
AGENTS.md: `terniq-check` 模块地图，说明 review workflow 与 specialist agent 调度边界。
SKILL.md: `terniq-check` skill 定义，负责 diff review、triage 与交付前验证。

架构决策
`terniq-check` 是交付前闸门，拥有 scope drift、严重级别、验证证据与 specialist review 的主导权。

开发规范
扩展本 skill 时，优先强化 findings 质量、验证纪律与 agent 触发条件，不把它改成泛泛“看看代码”模式。

变更日志
2026-04-25: 初始化 `terniq-check` skill 骨架。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
