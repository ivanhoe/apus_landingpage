#!/usr/bin/env bash
set -euo pipefail

readonly APUS_CLI_INSTALL_REF="v0.1.3"
readonly APUS_CLI_INSTALL_URL="https://raw.githubusercontent.com/ivanhoe/apus_cli/${APUS_CLI_INSTALL_REF}/scripts/install.sh"
readonly APUS_CLI_INSTALL_SHA256="2e8344fc9ff0689f53db81badc1f4849c53a632585ebb5ca56e429c3d8d0802c"

sha256() {
  if command -v shasum >/dev/null 2>&1; then
    shasum -a 256 "$1" | awk '{print $1}'
  elif command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$1" | awk '{print $1}'
  else
    echo "A SHA-256 tool is required to verify the installer." >&2
    exit 1
  fi
}

tmp_script="$(mktemp)"
trap 'rm -f "$tmp_script"' EXIT

curl -fsSL "$APUS_CLI_INSTALL_URL" -o "$tmp_script"

actual_sha256="$(sha256 "$tmp_script")"
if [[ "$actual_sha256" != "$APUS_CLI_INSTALL_SHA256" ]]; then
  echo "Installer checksum mismatch for ${APUS_CLI_INSTALL_REF}." >&2
  echo "Expected: $APUS_CLI_INSTALL_SHA256" >&2
  echo "Actual:   $actual_sha256" >&2
  exit 1
fi

bash "$tmp_script" "$@"
