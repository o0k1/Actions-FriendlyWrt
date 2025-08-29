#!/bin/bash

OPENWRT_VERSION=""

if [ ! -z "$1" ]; then
	OPENWRT_VERSION="$1"
fi

if [[ "${OPENWRT_VERSION}" =~ ^23\..+$ ]]; then
  # Patch feeds for mosdns (one possible solution)
  rm -rf feeds/packages/lang/golang
  git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang
fi
