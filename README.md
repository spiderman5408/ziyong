备注:只有'聪明人'才会用的脚本
---
# 一键综合:
- 系统支持: CentOS6+ / Debian6+ / Ubuntu14+  
使用方法: 
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/643822883/daige/master/zi.sh && bash zi.sh
```
- 项目地址: https://github.com/643822883/daige  

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
- 默认密匙: laog
- 下载目录: /usr/local/caddy/www/aria2/Download
- 相关指令:  
启动：/etc/init.d/aria2 start  
停止：/etc/init.d/aria2 stop  
重启：/etc/init.d/aria2 restart  
查看状态：/etc/init.d/aria2 status 
- 更新日志: 
> 2018年01月17日，版本 v1.1.1 新增 Vim编辑器安装代码 
> 2018年01月18日，版本 v1.1.2 修复 Aria2 卸载不完全的问题（会导致下次安装提示已安装）。 
> 2018年01月22日，版本 v1.1.3 
1. 新增 一键修改 RPC密码、RPC端口 以及 文件下载位置 的功能 
2. 新增 查看 配置信息 功能 
> 2018年01月25日，版本 v1.1.4 修复 当配置文件丢失时，无法卸载 Aria2 的问题。
---

## bbr.sh
- 脚本说明: BBR 是一个由谷歌社区开发的 TCP拥塞控制技术，是集成与Linux最新版本的内核中的
- 使用方法:
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/643822883/daige/master/bbr.sh && chmod +x bbr.sh && bash bbr.sh
```
- 相关指令:  
启动: bash bbr.sh start  
关闭: bash bbr.sh stop  
查看状态: bash bbr.sh stauts  
升级bbr: bash bbr.sh  
- 验证一下是否成功安装最新内核并开启 TCP BBR，输入以下命令:  
`uname -r`  
查看内核版本，含有 4.13 就表示 OK 了  
`sysctl net.ipv4.tcp_available_congestion_control`  
返回值一般为:  
net.ipv4.tcp_available_congestion_control = bbr cubic reno  
`sysctl net.ipv4.tcp_congestion_control`  
返回值一般为：  
net.ipv4.tcp_congestion_control = bbr  
`sysctl net.core.default_qdisc`  
返回值一般为：  
net.core.default_qdisc = fq  
`lsmod | grep bbr`  
返回值有 tcp_bbr 模块即说明 bbr 已启动。注意：并不是所有的 VPS 都会有此返回值，若没有也属正常  
---

## gost.sh
- 脚本说明: gost是linux下转发udp的小程序
- 使用方法:  
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/643822883/daige/master/gost.sh && chmod +x gost.sh && bash gost.sh
```
- 相关指令:  
启动: gost start  
关闭: gost stop  
重启: gost restart  
查看状态: gost check  
呼出帮助: gost help
---

## ariaNG+fliemanger.sh
- 脚本说明: aria2在线管理面板，需要基于caddy使用
- 使用方法:  
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/643822883/daige/master/ariaNGandfilemanger.sh && chmod +x ariaNGandfilemanger.sh && bash ariaNGandfilemanger.sh
```
- 访问前端: http://vps_ip:88  
- 访问filemanger: http://vps_ip/Download/files  
- AriaNg 虚拟主机文件夹：/usr/local/caddy/www/aria2
- AriaNg 下载文件夹：/usr/local/caddy/www/aria2/Download  
- Filemanager数据库位置：/usr/local/caddy/filemanager.db

- 支持 上传文件
- 支持 按类型 搜索文件
- 支持 批量压缩 文件下载
- 支持 多用户管理(权限可控)
- 支持 在网页执行 Linux命令
- 支持 创建 共享链接(限时/永久)
- 支持 在线编辑 各类文本文件
- 支持 在线浏览 图片/文本/视频等
- 支持 新建/重命名/移动/删除 文件和文件夹等
- 等等  
- 更新日志:  
> 2017.12.1修复部分系统无法解压文件
---

## caddy_install.sh
- 脚本说明: 一个很简单的HTTP服务器，如果你想要使用Nginx/Apache或者LNMP一键包之类的，使用方法自行谷歌
- 使用方法:  
```bash
wget -N --no-check-certificate https://raw.githubusercontent.com/643822883/daige/master/caddy_install.sh && chmod +x caddy_install.sh && bash caddy_inatall.sh
```
- 相关指令:  
启动：/etc/init.d/caddy start  
停止：/etc/init.d/caddy stop  
重启：/etc/init.d/caddy restart  
卸载：bash caddy_install.sh uninstall  
查看状态：/etc/init.d/caddy statusCaddy  
配置文件：/usr/local/caddy/CaddyfileCaddy  
虚拟主机：/usr/local/caddy/www  
查看Caddy启动日志： tail -f /tmp/caddy.log
---

