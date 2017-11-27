备注:只有'聪明人'才会用的脚本
---
# 一键综合:
系统支持: CentOS6+ / Debian6+ / Ubuntu14+  
使用方法: 
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/643822883/daige/master/zi.sh && bash zi.sh
```
项目地址: https://github.com/643822883/daige  



目前有的功能有这些，以后不断添加

- 测试上传下載网速延迟配置

- SSR多端口安装 

- gost一鍵安装(不帶监控)

- gost监控脚本下載(仅监控脚本源) 

- BBR算法加速 最新内核

- aria2后端搭建 

- caddy安装

- 锐速破解安装

- 锐速破解卸载

- 端口开放(SSR多端口无网需开放端口)

- 一键安装libsodium

- 一键安装ariaNG和filenanger 
---
# 单独安装:
## ssr.sh  
- 脚本说明: ShadowsocksR 一键安装/管理脚本，支持单端口/多端口切换和管理  
- 使用方法:  
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/643822883/daige/master/ssr.sh && chmod +x ssr.sh && bash ssr.sh
```
- 安装目录：/usr/local/shadowsocksr
- 配置文件：/usr/local/shadowsocksr/user-config.json
- 数据文件：/usr/local/shadowsocksr/mudb.json
- 相关指令:  
启动：/etc/init.d/ssrmu start  
停止：/etc/init.d/ssrmu stop  
重启：/etc/init.d/ssrmu restart  
查看状态：/etc/init.d/ssrmu status  

- 支持 限制 用户速度
- 支持 限制 用户设备数
- 支持 限制 用户总流量
- 支持 定时 流量清零
- 支持 显示 当前连接IP
- 支持 显示 SS/SSR连接+二维码
- 支持 一键安装 锐速
- 支持 一键安装 BBR
- 支持 一键封禁 垃圾邮件(SMAP)/BT/PT  
---

## aria2.sh
- 脚本说明: aria2一键安装/管理，支持大多数主流下载类型
- 使用方法:  
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/643822883/daige/master/aria2.sh && chmod +x aria2.sh && bash aria2.sh
```
- 配置文件：/root/.aria2/aria2.conf（配置文件包含中文注释，但是一些系统可能不支持显示中文)
- 默认密匙: laogan
- 下载目录: /usr/local/caddy/www/aria2/Download
- 相关指令:  
启动：/etc/init.d/aria2 start  
停止：/etc/init.d/aria2 stop  
重启：/etc/init.d/aria2 restart  
查看状态：/etc/init.d/aria2 status  
---

## bbr.sh
- 脚本说明: BBR 是一个由谷歌社区开发的 TCP拥塞控制技术，是集成与Linux最新版本的内核中的
- 使用方法:
```bash

```
- 相关指令:  
启动: bash bbr.sh start  
关闭: bash bbr.sh stop  
查看状态: bash bbr.sh stauts  
升级: bash bbr.sh  


