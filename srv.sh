#!/bin/bash

# tar gz
======================
# create
tar -czvf home.tar.gz home
tar --exclude='dt' --exclude='extr' -czvf html.tar.gz html

# extract
tar -zxvf home.tar.gz


# p7zip
======================
# install
yum -y install p7zip

# unzip 
7za x -pPaswd file.7z


#keygen
======================
ssh-keygen
ssh-copy-id root@138.68.8.xxx


# rsync
======================
# Mengirim ke luar |
rsync -avz --progress dt root@95.179.155.134:/home

# Mengirim ke dalam |
rsync -avzh --progress root@155.138.159.94:/home/shu3 /home


# SEMANGE / SELINUX pakai [rw] means read & write
=================================================
ls -laZ
chcon -R -t httpd_sys_rw_content_t coba.dv
chcon -h system_u:object_r:httpd_sys_content_t /home/w
chcon -R system_u:object_r:httpd_sys_content_t /home/w
# semanage boolean --modify --on httpd_can_network_connect
# /usr/sbin/setsebool -P httpd_can_network_connect 1
setsebool -P httpd_can_network_connect 1

Screen
======================
rename:
screen -S 8890.foo -X sessionname bar


Sed
======================
sed -n '2p' < file.txt
will print 2nd line

sed -n '2011p' < file.txt
2011th line

sed -n '10,33p' < file.txt
line 10 up to line 33

sed -n '1p;3p' < file.txt
1st and 3th line


Editor (auto)
======================
export EDITOR=nano

