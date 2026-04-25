# terniq-hunt/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/skills/AGENTS.md

成员清单
AGENTS.md: `terniq-hunt` 模块地图，说明系统化调试 workflow 的边界。
SKILL.md: `terniq-hunt` skill 定义，负责根因定位、证据链与修复前确认。

架构决策
`terniq-hunt` 只解决诊断问题，不拥有大规模实现；它的价值是让修复建立在确认过的根因上。

开发规范
扩展本 skill 时，优先强化假设质量、复现路径与证据链，不把它写成“先试着修一修”。

变更日志
2026-04-25: 初始化 `terniq-hunt` skill 骨架。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
