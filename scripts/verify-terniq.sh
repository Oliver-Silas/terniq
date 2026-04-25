#!/usr/bin/env bash
set -euo pipefail

ROOT="/Volumes/new-room/code-web-app/terniq"
README="$ROOT/README.md"
RESOLVER="$ROOT/skills/RESOLVER.md"

skills=(
  terniq-think
  terniq-design
  terniq-check
  terniq-hunt
  terniq-read
  terniq-learn
  terniq-write
  terniq-health
)

commands=(
  plan
  design
  review
  debug
  read
  research
  edit
  health
)

fail() {
  echo "FAIL: $1" >&2
  exit 1
}

check_file() {
  local path="$1"
  [[ -f "$path" ]] || fail "missing file: $path"
}

check_contains() {
  local path="$1"
  local needle="$2"
  grep -Fq "$needle" "$path" || fail "expected '$needle' in $path"
}

for skill in "${skills[@]}"; do
  check_file "$ROOT/skills/$skill/SKILL.md"
  check_file "$ROOT/skills/$skill/AGENTS.md"
  check_contains "$README" "$skill"
  check_contains "$RESOLVER" "$skill"
done

for command in "${commands[@]}"; do
  check_file "$ROOT/commands/$command.md"
done

for command in "${commands[@]}"; do
  case "$command" in
    plan) owner="terniq-think" ;;
    design) owner="terniq-design" ;;
    review) owner="terniq-check" ;;
    debug) owner="terniq-hunt" ;;
    read) owner="terniq-read" ;;
    research) owner="terniq-learn" ;;
    edit) owner="terniq-write" ;;
    health) owner="terniq-health" ;;
    *) fail "unknown command: $command" ;;
  esac
  check_contains "$ROOT/commands/$command.md" "Owning skill: \`$owner\`"
  check_contains "$README" "/terniq:$command"
done

check_file "$ROOT/.codex-plugin/plugin.json"
check_file "$ROOT/.agents/AGENTS.md"
check_file "$ROOT/.agents/plugins/AGENTS.md"
check_file "$ROOT/.agents/plugins/marketplace.json"
check_file "$ROOT/scripts/AGENTS.md"
check_file "$ROOT/scripts/install.sh"
check_file "$ROOT/skills/AGENTS.md"
check_contains "$README" ".agents/plugins/marketplace.json"
check_contains "$README" "scripts/install.sh"

echo "verify-terniq: ok"
