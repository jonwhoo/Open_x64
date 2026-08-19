#!/bin/bash

# 进入 openwrt 源码目录（最关键的一行，防止找不到文件）
cd openwrt

# 1. 修改默认后台 IP（改为 192.168.10.1）
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 修改默认主机名为 CuiWrt-x86
sed -i 's/OpenWrt/CuiWrt-x86/g' package/base-files/files/bin/config_generate
