# agents/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/AGENTS.md

成员清单
AGENTS.md: agent 目录地图，定义专家分身职责与触发边界。
environment-auditor.md: Codex 环境审计分身，服务 `terniq-health`。
researcher.md: 深度研究分身，服务 `terniq-learn`。
reviewer-architecture.md: 架构评审分身，服务 `terniq-check`。
reviewer-frontend.md: 前端与界面评审分身，服务 `terniq-check` 与 `terniq-design`。
reviewer-security.md: 安全评审分身，服务 `terniq-check`。

架构决策
`agents/` 只放被 skills 调度的专家角色，不放用户直达 workflow；主流程永远由 skill 拥有，agent 只解决并行或专项推理问题。

开发规范
新增 agent 时，先写清楚归属 skill、输入边界、输出格式，再更新本目录地图。

变更日志
2026-04-25: 建立 Terniq agent 目录并登记 5 个首发专家分身。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
