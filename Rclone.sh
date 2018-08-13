#下载Rclone解压然后进入目录
wget --no-check-certificate -N "https://raw.githubusercontent.com/643822883/daige/master/Rclone/rclone-v1.42-linux-amd64.zip"
unzip rclone-v1.42-linux-amd64.zip
cd rclone-v1.42-linux-amd64

#开始配置
echo -e "第一步选择n，然后回车输入 lala"
echo -e "然后选择我们要挂载的类型"
echo -e "接着client_id、client_secret、service_account_file都留空直接回车，Use auto config?这里我们选择n"
echo -e "按提示输入云盘授权码"
echo -e "最后依次输入n、y、q"
./rclone config

#新建挂载目录
mkdir -p /lala/gdrive

#挂载目录为磁盘
./rclone mount lala: /lala/gdrive --allow-other --allow-non-empty --vfs-cache-mode writes

#新建一个rclone.service文件
mkdir -p /usr/lib/systemd/system

cd /usr/lib/systemd/system

wget --no-check-certificate -N "https://raw.githubusercontent.com/643822883/daige/master/Rclone/rclone.service" 

#重载daemon
systemctl daemon-reload

#用systemctl来启动rclone
systemctl start rclone

#设置开机启动
systemctl enable rclone

#配置自动上传到云盘
cd /root

wget --no-check-certificate -N "https://raw.githubusercontent.com/643822883/daige/master/Rclone/autoupload.sh"

chmod +x /root/autoupload.sh

echo "on-download-complete=/root/autoupload.sh" >> /root/.aria2/aria2.conf