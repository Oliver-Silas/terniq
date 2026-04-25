# terniq/
> L2 | 父级: /Volumes/new-room/code-web-app/AGENTS.md

成员清单
AGENTS.md: Terniq 子项目地图，定义目录骨架、职责边界与首发结构。
.gitignore: Git 工作区忽略规则，先屏蔽 macOS 生成物，保证开源仓首提干净。
.agents/: 本地 marketplace 包装层，承载 Codex marketplace manifest 与开发态分发元数据。
.codex-plugin/: Codex 插件清单目录，承载 `plugin.json` 与插件层说明。
assets/: 项目视觉资源目录，承载 README 展示图与后续品牌素材。
CONTRIBUTING.md: 开源协作说明，定义贡献方式、提 issue 与提 PR 的基本流程。
LICENSE: 开源许可证文件，定义当前仓库的使用与分发权限。
README.md: 项目入口文档，概述定位、结构与后续实现顺序。
agents/: 专家 agent 目录，承载 review、research 与 environment audit 分身。
commands/: 显式命令入口目录，承载 `/terniq:*` 命令文档。
docs/: 设计与规划文档目录，承载产品定位、插件结构与首发全量版本规格。
scripts/: 轻量校验脚本目录，承载结构一致性与维护辅助工具。
skills/: 核心 workflow 目录，承载 8 个 Codex-native skill。

架构决策
Terniq 先作为 Codex 原生 workflow plugin 的真实仓骨架存在，第一阶段先把插件壳、8 个 skills、5 个 agents 与 8 个 commands 的目录边界固定，再逐步填充各自 workflow 细节。

开发规范
新增 `skills/`、`agents/`、`commands/`、`.codex-plugin/` 等目录时，先补充本文件成员清单，再确保对应文件头契约与父级地图同步。

变更日志
2026-04-25: 初始化 `terniq/` 目录并落地首版设计规划文档。
2026-04-25: 建立 `.codex-plugin/`、`skills/`、`agents/`、`commands/` 首发骨架，并为后续实现保留稳定目录边界。
2026-04-25: 新增 `skills/RESOLVER.md` 与 `scripts/verify-terniq.sh`，补齐触发分流与轻量自校验层。
2026-04-25: 新增 `.agents/plugins/marketplace.json`，补齐本地 Codex marketplace 包装层与试装入口。
2026-04-25: 新增 `.gitignore`，为公开仓首发屏蔽 macOS 生成物。
2026-04-25: 新增 `assets/`、`LICENSE` 与 `CONTRIBUTING.md`，补齐开源首发展示层与协作入口。
2026-04-25: 新增品牌 logo、social preview 资源与一键安装脚本，提升 README 首屏质感与试用便利性。

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
