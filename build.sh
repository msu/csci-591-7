#!/bin/bash

cd csci_591/res
/bin/bash mktable.sh
cd ../..
uv run mkdocs build -f csci_591/mkdocs.yml
