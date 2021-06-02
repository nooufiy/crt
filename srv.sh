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
