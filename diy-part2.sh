#!/bin/bash

# 进入 openwrt 源码目录
cd openwrt

# 1. 修改默认后台 IP（改为 192.168.10.1）
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 2. 修改默认主机名为 CuiWrt-x86
sed -i 's/OpenWrt/CuiWrt-x86/g' package/base-files/files/bin/config_generate

# 3. 删除源码自带的旧版 PassWall 避免与外部源冲突
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf package/lean/luci-app-passwall
