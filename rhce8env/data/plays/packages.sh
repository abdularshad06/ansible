#!/bin/bash

ansible all -m yum_repository -a "name=RHEL_Appstream description='RHEL 8 Appstream' baseurl=http://repo.ansi.example.com/AppStream gpgkey=http://repo.ansi.example.com/RPM-GPG-KEY-redhat-release gpgcheck=yes enabled=yes"
ansible all -m yum_repository -a "name=RHEL_BaseOS description='RHEL 8 BaseOS' baseurl=http://repo.ansi.example.com/BaseOS gpgkey=http://repo.ansi.example.com/RPM-GPG-KEY-redhat-release gpgcheck=yes enabled=yes"
