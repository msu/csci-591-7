#!/usr/bin/env bash

set -euo pipefail

cd csci_591/res
/bin/bash mktable.sh
cd ../..
uv run --locked mkdocs build --strict -f csci_591/mkdocs.yml
