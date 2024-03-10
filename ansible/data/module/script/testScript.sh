#!/bin/bash

pwd >> /tmp/ansible_fileCreatedByScript.txt

echo "first arg: $1" >> /tmp/ansible_fileCreatedByScript.txt

echo "====================================" >> /tmp/ansible_fileCreatedByScript.txt

ifconfig >> /tmp/ansible_fileCreatedByScript.txt
