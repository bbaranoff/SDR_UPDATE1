#!/bin/bash
apt install libccid
cd ~
wget https://open-cells.com/opencells-mods-20190923.tgz
tar xf opencells-mods-20190923.tgz
sudo systemctl restart mysql.service
sudo mkdir -p /usr/local/etc/oai
sudo cp -rp ~/opencells-mods/config_epc/* /usr/local/etc/oai
cd openair-cn; source oaienv; cd scripts
./check_hss_s6a_certificate /usr/local/etc/oai/freeDiameter hss.OpenAir5G.Alliance
./check_mme_s6a_certificate /usr/local/etc/oai/freeDiameter mme.OpenAir5G.Alliance
/root/opencells-mods/hss_import 127.0.0.1 root linux oai_db ~/opencells-mods/opencells_db.sql
echo "Up to date !!"
rm -rf /root/SDR_UPDATE1
