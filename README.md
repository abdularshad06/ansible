# ansible
Learning Ansible

Steps to Setup and Start VMs
vagrant up ansible-controller
sshd_config --> PasswordAuthentication = yes
vagrant ssh ansible-controller

sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
sudo yum update -y

exit

vagrant reload ansible-controller

vagrant ssh ansible-controller
