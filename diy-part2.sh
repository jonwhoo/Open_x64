#!/bin/bash

# 1. 修改默认后台 IP（如改为 192.168.10.1，不改可删掉此行）
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 修改默认主机名为 OpenWrt-x86
sed -i 's/OpenWrt/CuiWrt-x86/g' package/base-files/files/bin/config_generate
