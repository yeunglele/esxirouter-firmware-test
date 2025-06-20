#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}

########################################luci-app-smartdns#############################################
#原作者 openwrt已有
#git clone -b lede https://github.com/pymumu/luci-app-smartdns ./packages_luci-app-smartdns/luci-app-smartdns
#git clone https://github.com/pymumu/openwrt-smartdns ./packages_luci-app-smartdns/smartdns
#二次修改
git clone https://github.com/kenzok8/small-package
mkdir ./packages_luci-app-smartdns
mv small-package/luci-app-smartdns ./packages_luci-app-smartdns/
mv small-package/smartdns ./packages_luci-app-smartdns/
rm -rf small-package
#####################################################################################################

########################################luci-app-adguardhome##########################################
#原作者,弃用
#git clone https://github.com/rufengsuixing/luci-app-adguardhome
#二次修改,弃用
#git clone https://github.com/kongfl888/luci-app-adguardhome
#三次修改
git clone https://github.com/kenzok8/small-package
mkdir ./packages_luci-app-adguardhome
mv small-package/luci-app-adguardhome ./packages_luci-app-adguardhome/
mv small-package/adguardhome ./packages_luci-app-adguardhome/
rm -rf small-package
#######################################################################################################

########################################luci-app-passwall##########################################
git clone https://github.com/xiaorouji/openwrt-passwall-packages ./packages_luci-app-passwall
#原作者 第1版luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall ./passwall && mv ./passwall/luci-app-passwall ./packages_luci-app-passwall/ && rm -rf ./passwall
#原作者 第2版luci-app-passwall2
git clone https://github.com/xiaorouji/openwrt-passwall2 ./passwall && mv ./passwall/luci-app-passwall2 ./packages_luci-app-passwall/ && rm -rf ./passwall
#######################################################################################################

########################################luci-app-ssr-plus#############################################
#原作者
git clone https://github.com/fw876/helloworld ./packages_luci-app-ssr-plus 
#######################################################################################################

#################################################主题########################################################################################################
########################################luci-app-argon#############################################
#原作者
git clone https://github.com/jerrykuku/luci-theme-argon.git
#git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config
############################################################################################################################################################



rm -rf ./*/.git & rm -rf ./*/.gitattributes & rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.git & rm -rf ./*/*/.gitattributes &rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
