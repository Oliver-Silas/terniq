# scripts/
> L2 | 父级: /Volumes/new-room/code-web-app/terniq/AGENTS.md

成员清单
AGENTS.md: scripts 目录地图，说明轻量校验脚本的职责边界。
verify-terniq.sh: 结构一致性校验脚本，检查 skills、commands、README 与 resolver 是否同步。

架构决策
`scripts/` 只放确定性维护工具，不承载需要判断的 workflow；判断归 skills，校验归 scripts。

开发规范
新增脚本时，优先保持零依赖或低依赖，并明确输入输出；避免把业务逻辑偷偷塞进校验脚本。

变更日志
2026-04-25: 初始化 scripts 目录并加入 `verify-terniq.sh` 作为轻量自校验入口。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
