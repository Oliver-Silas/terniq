#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/Oliver-Silas/terniq.git"
PLUGIN_ROOT="${HOME}/.codex/local-plugins/terniq"
MARKETPLACE_ROOT="${HOME}/.codex/local-marketplaces/terniq"
MARKETPLACE_JSON="${MARKETPLACE_ROOT}/.agents/plugins/marketplace.json"
CONFIG_PATH="${HOME}/.codex/config.toml"

require_cmd() {
  command -v "$1" >/dev/null 2>&1 || {
    echo "Missing required command: $1" >&2
    exit 1
  }
}

require_cmd git
require_cmd codex
require_cmd python3

mkdir -p "${HOME}/.codex/local-plugins"

if [[ -d "${PLUGIN_ROOT}/.git" ]]; then
  git -C "${PLUGIN_ROOT}" fetch origin
  git -C "${PLUGIN_ROOT}" pull --ff-only origin main
else
  rm -rf "${PLUGIN_ROOT}"
  git clone "${REPO_URL}" "${PLUGIN_ROOT}"
fi

mkdir -p "${MARKETPLACE_ROOT}/.agents/plugins"
mkdir -p "${MARKETPLACE_ROOT}/plugins"

ln -sfn "${PLUGIN_ROOT}" "${MARKETPLACE_ROOT}/plugins/terniq"

cat > "${MARKETPLACE_JSON}" <<'JSON'
{
  "name": "terniq",
  "interface": {
    "displayName": "Terniq"
  },
  "plugins": [
    {
      "name": "terniq",
      "source": {
        "source": "local",
        "path": "./plugins/terniq"
      },
      "policy": {
        "installation": "AVAILABLE",
        "authentication": "ON_USE"
      },
      "category": "Productivity"
    }
  ]
}
JSON

codex plugin marketplace remove terniq >/dev/null 2>&1 || true
codex plugin marketplace add "${MARKETPLACE_ROOT}"

mkdir -p "$(dirname "${CONFIG_PATH}")"
touch "${CONFIG_PATH}"

python3 - <<'PY'
from pathlib import Path

config_path = Path.home() / ".codex" / "config.toml"
needle = '[plugins."terniq@terniq"]'
content = config_path.read_text() if config_path.exists() else ""

if needle not in content:
    if content and not content.endswith("\n"):
        content += "\n"
    content += '\n[plugins."terniq@terniq"]\nenabled = true\n'
else:
    lines = content.splitlines()
    out = []
    in_block = False
    found_enabled = False
    for line in lines:
        if line.strip() == needle:
            in_block = True
            found_enabled = False
            out.append(line)
            continue
        if in_block and line.startswith("[") and line.strip() != needle:
            if not found_enabled:
                out.append('enabled = true')
            in_block = False
        if in_block and line.strip().startswith("enabled ="):
            out.append('enabled = true')
            found_enabled = True
        else:
            out.append(line)
    if in_block and not found_enabled:
        out.append('enabled = true')
    content = "\n".join(out) + "\n"

config_path.write_text(content)
PY

echo
echo "Terniq installed."
echo "Marketplace root: ${MARKETPLACE_ROOT}"
echo "Plugin root: ${PLUGIN_ROOT}"
echo
echo "Next step: restart Codex if the current session does not hot-load the plugin."
