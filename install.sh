#!/usr/bin/env bash
set -euo pipefail

readonly APUS_CLI_INSTALL_URL="https://raw.githubusercontent.com/ivanhoe/apus_cli/main/scripts/install.sh"

curl -fsSL "$APUS_CLI_INSTALL_URL" | bash -s -- "$@"
