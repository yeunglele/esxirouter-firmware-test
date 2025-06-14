#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}

git clone https://github.com/kenzok8/openwrt-packages
mkdir ./packages_luci-app-smartdns
mv openwrt-packages/luci-app-smartdns ./packages_luci-app-smartdns/
mv openwrt-packages/smartdns ./packages_luci-app-smartdns/
rm -rf openwrt-packages

git clone https://github.com/kenzok8/openwrt-packages
mkdir ./packages_luci-app-adguardhome
mv openwrt-packages/luci-app-adguardhome ./packages_luci-app-adguardhome/
mv openwrt-packages/adguardhome ./packages_luci-app-adguardhome/
rm -rf openwrt-packages

git clone https://github.com/fw876/helloworld ./packages_luci-app-ssr-plus 

git clone -b https://github.com/jerrykuku/luci-theme-argon.git

rm -rf ./*/.git & rm -rf ./*/.gitattributes & rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.git & rm -rf ./*/*/.gitattributes &rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
