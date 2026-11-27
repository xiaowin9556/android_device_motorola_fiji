#!/bin/bash
#
# SPDX-License-Identifier: Apache-2.0

set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec python3 "$SCRIPT_DIR/setup-makefiles.py" "$@"
