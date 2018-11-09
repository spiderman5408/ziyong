#下载并解压filebrowser：
cd /root
wget https://github.com/filebrowser/filebrowser/releases/download/v1.9.0/linux-amd64-filebrowser.tar.gz
tar -zxvf linux-amd64-filebrowser.tar.gz

#复制可执行文件到/usr/bin
cp /root/filebrowser /usr/bin/filebrowser

mkdir /usr/lib/systemd/system

cd /usr/lib/systemd/system

wget -N --no-check-certificate https://github.com/643822883/daige/raw/master/filebrowser/filebrowser.service
