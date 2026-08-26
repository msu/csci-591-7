#!/bin/bash

python build_table.py dates.txt classes.txt table.md
cp table.md ../docs/includes/table.md
