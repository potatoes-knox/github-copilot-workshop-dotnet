#!/usr/bin/env bash
set -euo pipefail

# Fail if any project targets net6.0 (intentionally strict for workshop demo).

matches=$(grep -R --line-number --include='*.csproj' -E '<TargetFrameworks?>.*net6\.0.*</TargetFrameworks?>' . || true)
if [[ -n "${matches}" ]]; then
  echo "EOL framework detected (net6.0). Upgrade required."
  echo ""
  echo "Matches:"
  echo "${matches}"
  exit 1
fi

echo "OK: no EOL TFMs found."
