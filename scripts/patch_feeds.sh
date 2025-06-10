#!/bin/bash

# Patch feeds for mosdns (one possible solution)
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 24.x feeds/packages/lang/golang

# Possible fix for libpcre
rm -fr bin/ dl/ staging_dir/ build_dir/ tmp/
