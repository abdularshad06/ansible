#!/bin/bash

# create user automation on control node.
useradd automation

# set password for automation user on control node.
echo 'devops' | passwd --stdin automation

# set StrictHostKeyChecking no
echo "StrictHostKeyChecking no" > /etc/ssh/ssh_config.d/StrictHostKeyChecking.conf

# create user automation on all node{1..4}
for i in {1..4}; do sshpass -p password ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@node$i "useradd automation"; done

# set password for automation user.
for i in {1..4}; do sshpass -p password ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@node$i "echo 'devops' | passwd --stdin automation"; done

# add automation user in sudoers on all node
for i in {1..4}; do sshpass -p password ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@node$i "echo 'automation ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/automation"; done

# ssh keypair generation for automation user on control node and copy in to all node 1 to 4.
sudo -u automation ssh-keygen -t rsa -b 4096
for i in {1..4}; do
    sudo -u automation ssh-copy-id -i /home/automation/.ssh/id_rsa.pub automation@node$i
done

# Commands to execute on each node
commands=(
    "echo 'Hello from node1'"
    "echo 'Hello from node2'"
    "echo 'Hello from node3'"
    "echo 'Hello from node4'"
)

# SSH into each node and execute the command
for i in {1..4}; do
    sudo -u automation ssh automation@node$i "${commands[$i-1]}"
done

su - automation
