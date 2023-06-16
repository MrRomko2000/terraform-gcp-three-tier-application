# #!/bin/bash
#This line specifies the IP address of the host where the WordPress database is located. In this case, the database is hosted on the IP address "34.148.150.3".
WORDPRESS_DB_HOST="34.23.161.22"
WORDPRESS_DB_NAME="team3db"
WORDPRESS_DB_USER="team3user"
WORDPRESS_DB_PASSWORD="gcpteam3project2023##"
#This line uses the yum package manager to install several packages: httpd (Apache web server), wget (command-line tool for downloading files), unzip (tool for extracting compressed files), epel-release (Extra Packages for Enterprise Linux repository), and mysql (MySQL database server).
sudo yum install httpd wget unzip epel-release mysql -y
# This line installs the Remi repository, which provides updated PHP packages for CentOS
sudo yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
sudo yum -y install yum-utils
sudo yum-config-manager --enable remi-php56   [Install PHP 5.6]
sudo yum -y install php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo
sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xf latest.tar.gz -C /var/www/html/
sudo mv /var/www/html/wordpress/* /var/www/html/
sudo getenforce
sudo sed ‘s/SELINUX=permissive/SELINUX=enforcing/g’ /etc/sysconfig/selinux -i
sudo setenforce 0
sudo chown -R apache:apache /var/www/html/
sudo systemctl start httpd
sudo systemctl enable httpd