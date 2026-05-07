#!/bin/bash
#
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Version: 1.1 (Stable & Maintainable)
#

echo "==> DIY Part 2 Start"

# ==========================================
# 基础系统定制
# ==========================================

# 修改默认IP
sed -i 's/192.168.1.1/192.168.100.2/g' package/base-files/files/bin/config_generate

# 修改主机名
# sed -i 's/OpenWrt/mRouter/g' package/base-files/files/bin/config_generate

# 文件权限
[ -d files ] && chmod -R 755 files

echo "==> DIY Part 2 Done"
