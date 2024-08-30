#!/bin/bash

rm -rf  /var/www/html/*
rm -rf /var/ftp/pub/rhel9_repo

systemctl disable httpd vsftpd
systemctl stop httpd vsftpd
dnf remove httpd vsftpd -y

rm -rf /etc/yum.repos.d/RHEL_9.3_BaseOS.repo
umount /mnt/dvd
rm -rf /mnt/dvd
rm -rf /etc/yum.repos.d/dvd.repo

rm -rf /root/.ansible/collections/ansible_collections/*


