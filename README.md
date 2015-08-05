## Salt receipts for nginx, mysql, php-fpm, модули php, postfix, iptables on CentOS 6.x

### Instal EPEL, update operating system, install salt, git
rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum update
yum install salt-minion git

### Clone salt receipts
cd /srv
git clone https://github.com/vukor/salt.git

## Deploy nginx, mysql, php-fpm, модули php, postfix, iptables
salt-call state.highstate --local

### Now you have to:

  * rename and change /etc/nginx/hosts/virtualhost.conf
  * setup MySQL (run mysql_secure_instalation, create DB)
  * reboot the server
