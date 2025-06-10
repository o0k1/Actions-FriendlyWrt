#!/bin/bash

# Patch feeds for mosdns (one possible solution)
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang
