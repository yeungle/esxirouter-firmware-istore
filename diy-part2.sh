#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-design/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/applications/luci-app-adguardhome
rm -rf feeds/luci/applications/luci-app-smartdns
rm -rf feeds/packages/net/adguardhome
rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/applications/luci-app-passwall

#git clone --depth=1 -b main https://github.com/fw876/helloworld.git package/helloworld

#git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome

git clone --depth=1 https://github.com/kenzok8/small-package.git kenzok8-packages
cp -rf kenzok8-packages/ddnsto package/ddnsto
cp -rf kenzok8-packages/luci-app-ddnsto package/luci-app-ddnsto
cp -rf kenzok8-packages/wrtbwmon package/wrtbwmon
cp -rf kenzok8-packages/luci-app-wrtbwmon package/luci-app-wrtbwmon
cp -rf kenzok8-packages/adguardhome package/adguardhome
cp -rf kenzok8-packages/luci-app-adguardhome package/luci-app-adguardhome
cp -rf kenzok8-packages/smartdns package/smartdns
cp -rf kenzok8-packages/luci-app-smartdns package/luci-app-smartdns
cp -rf kenzok8-packages/luci-app-passwall package/luci-app-passwall
cp -rf kenzok8-packages/chinadns-ng package/chinadns-ng
cp -rf kenzok8-packages/dns2socks package/dns2socks
cp -rf kenzok8-packages/hysteria package/hysteria
cp -rf kenzok8-packages/ipt2socks package/ipt2socks
cp -rf kenzok8-packages/microsocks package/microsocks
cp -rf kenzok8-packages/naiveproxy package/naiveproxy
cp -rf kenzok8-packages/shadow-tls package/shadow-tls
cp -rf kenzok8-packages/shadowsocks-rust package/shadowsocks-rust
cp -rf kenzok8-packages/shadowsocksr-libev package/shadowsocksr-libev
cp -rf kenzok8-packages/simple-obfs package/simple-obfs
cp -rf kenzok8-packages/sing-box package/sing-box
cp -rf kenzok8-packages/ssocks package/ssocks
cp -rf kenzok8-packages/tcping package/tcping
cp -rf kenzok8-packages/trojan-plus package/trojan-plus
cp -rf kenzok8-packages/trojan-go package/trojan-go
cp -rf kenzok8-packages/tuic-client package/tuic-client
cp -rf kenzok8-packages/v2ray-geodata package/v2ray-geodata
cp -rf kenzok8-packages/v2ray-plugin package/v2ray-plugin
cp -rf kenzok8-packages/xray-core package/xray-core
cp -rf kenzok8-packages/xray-plugin package/xray-plugin
cp -rf kenzok8-packages/dns2tcp package/dns2tcp
cp -rf kenzok8-packages/quickstart package/quickstart
cp -rf kenzok8-packages/luci-app-quickstart package/luci-app-quickstart
cp -rf kenzok8-packages/luci-app-store package/luci-app-store
cp -rf kenzok8-packages/luci-lib-taskd package/luci-lib-taskd
cp -rf kenzok8-packages/taskd package/taskd
cp -rf kenzok8-packages/luci-lib-xterm package/luci-lib-xterm
rm -rf kenzok8-packages

#git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon

./scripts/feeds update -a
./scripts/feeds install -a


