#!/bin/bash
#自写自用脚本
echo "
---------------------------------------------------------
请选择需要安装的测速程序，输入相应序列号回车
---------------------------------------------------------

【1】测试上传下载网速延迟配置

【2】(测试上传下载网速延迟配置)

【3】SSR多端口安装

【4】(SSR多端口安装)

【5】gost一键安装(不带监控)

【6】gost监控脚本下载(仅监控脚本源)

【7】BBR算法加速+最新内核

【8】(BBR算法加速+最新内核）

【9】aria2后端搭建

【10】(aria2后端搭建)

【11】caddy安装

【12】(caddy安装)

【13】锐速破解安装

【14】锐速破解卸载

【15】端口开放(SSR多端口无网需开放端口) 

【16】一键安装libsodium

                   有问题告诉我:643822883

---------------------------------------------------------
"
read os
clear

url='https://raw.githubusercontent.com/643822883/daige/master'

#测试上传下载网速程序
if test $os == 1 ;then
echo '******正在下载测速程序，请等待几分钟******';
wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/caddy_install.sh;
chmod +x caddy_install.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在执行程序******';
bash caddy_install.sh;
fi

#(测试上传下载延迟备用)
if test $os == 2 ;then
echo '******正在下载测速程序，请等待几分钟******';
wget  -N --no-check-certificate ${url}/superbench.sh;
chmod +x superbench.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在执行程序******';
bash superbench.sh;
fi

#SSR一键安装程序
if test $os == 3 ;then
echo '******正在下载SSR多端口，请等待几分钟******';
wget -N --no-check-certificate https://softs.fun/Bash/ssrmu.sh;
chmod +x ssrmu.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash ssrmu.sh;
fi

#(SSR一键安装程序)
if test $os == 4 ;then
echo '******正在下载SSR多端口，请等待几分钟******';
wget -N --no-check-certificate ${url}/ssr.sh;
chmod +x ssr.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash ssr.sh;
fi

#gost一键安装
if test $os == 5 ;then
echo '******正在下载gost程序，请等待几分钟******';
wget -N --no-check-certificate ${url}/gost.sh;
chmod +x gost.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash gost.sh;
fi

#gost监控脚本下载
if test $os == 6 ;then
echo '******正在下载gost监控脚本，请等待几分钟******';
wget -N --no-check-certificate ${url}/gostjk.sh;
chmod +x gostjk.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash gostjk.sh;
fi


#BBR算法加速
if test $os == 7 ;then
echo '******正在下载BBR算法加速，请等待几分钟******';
wget -N --no-check-certificate https://softs.fun/Bash/bbr.sh;
chmod +x bbr.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash bbr.sh;
fi

#(BBR算法加速)
if test $os == 8 ;then
echo '******正在下载BBR算法加速，请等待几分钟******';
wget -N --no-check-certificate ${url}/bbr.sh;
chmod +x bbr.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash bbr.sh;
fi

#aria2后端安装
if test $os == 9 ;then
echo '******正在下载aria2后端，请等待几分钟******';
wget -N --no-check-certificate https://softs.fun/Bash/aria2.sh;
chmod +x aria2.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash aria2.sh;
fi

#(aria2后端安装)
if test $os == 10 ;then
echo '******正在下载aria2后端，请等待几分钟******';
wget -N --no-check-certificate ${url}/aria2.sh;
chmod +x aria2.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash aria2.sh;
fi

#caddy安装
if test $os == 11 ;then
echo '******正在下载caddy，请等待几分钟******';
wget -N --no-check-certificate https://softs.fun/Bash/caddy_install.sh;
chmod +x caddy_install.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash caddy_install.sh install http.filemanager;
fi

#(caddy安装)
if test $os == 12 ;then
echo '******正在下载caddy，请等待几分钟******';
wget -N --no-check-certificate ${url}/caddy_install.sh;
chmod +x caddy_install.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash caddy_install.sh;
fi

#锐速破解安装程序
if test $os == 13 ;then
echo '******正在下载锐速破解程序，请等待几分钟******';
wget -N --no-check-certificate ${url}/serverspeeder.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash serverspeeder.sh;
fi

#锐速破解卸载程序
if test $os == 14 ;then
echo '******正在卸载锐速破解程序，请等待几分钟******';
chattr -i /serverspeeder/etc/apx* && /serverspeeder/bin/serverSpeeder.sh uninstall -f;
echo -e '卸载完成：			  [\033[32m  OK  \033[0m]';
fi

#多端口开放
if test $os == 15 ;then
echo '******正在开放服务器端口，请等待几分钟******';
wget -N --no-check-certificate ${url}/dk;
bash dk;
fi

#(一键安装libsodium)
if test $os == 16 ;then
echo '******正在安装libsodium，请等待几分钟******';
wget -N --no-check-certificate https://raw.githubusercontent.com/643822883/daige/master/libsodium/libsodium.sh;
chmod +x libsodium.sh;
bash libsodium.sh;

exit 0
