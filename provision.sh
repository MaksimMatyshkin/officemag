sudo su
apt-get update
apt install vim -y
apt install wget -y
apt install htop -y
apt install tmux -y
apt-get -y install apt-transport-https lsb-release ca-certificates curl
curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
apt-get update
#apt-cache search php5
apt install php5.6 -y
wget --quiet -O - http://nginx.org/keys/nginx_signing.key | apt-key add -
echo "deb http://nginx.org/packages/debian/ $(lsb_release -sc) nginx">/etc/apt/sources.list.d/nginx.list
echo "deb-src http://nginx.org/packages/debian/ $(lsb_release -sc) nginx">>/etc/apt/sources.list.d/nginx.list
apt-get update
apt-get install -y nginx
systemctl start nginx   
apt install apache2 -y
