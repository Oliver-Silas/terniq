# commands/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/AGENTS.md

成员清单
AGENTS.md: command 目录地图，定义 `/terniq:*` 显式入口与所属 workflow。
debug.md: `/terniq:debug` 命令说明，路由到 `terniq-hunt`。
design.md: `/terniq:design` 命令说明，路由到 `terniq-design`。
edit.md: `/terniq:edit` 命令说明，路由到 `terniq-write`。
health.md: `/terniq:health` 命令说明，路由到 `terniq-health`。
plan.md: `/terniq:plan` 命令说明，路由到 `terniq-think`。
read.md: `/terniq:read` 命令说明，路由到 `terniq-read`。
research.md: `/terniq:research` 命令说明，路由到 `terniq-learn`。
review.md: `/terniq:review` 命令说明，路由到 `terniq-check`。

架构决策
`commands/` 只提供显式入口，不复制 skill 的完整逻辑；命令层的职责是稳定触发，而不是形成第二套产品。

开发规范
每个 command 文件必须明确指向唯一 owning skill；如果一个命令需要两个 workflow 才成立，说明边界设计有问题。

变更日志
2026-04-25: 建立 Terniq command 目录并登记 8 个首发命令入口。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
