sudo su
apt update
apt install vim -y
apt install wget -y
apt install htop -y
apt install tmux -y
apt -y install apt-transport-https lsb-release ca-certificates curl
curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
apt update
apt install php5.6 -y
wget --quiet -O - http://nginx.org/keys/nginx_signing.key | apt-key add -
echo "deb http://nginx.org/packages/debian/ $(lsb_release -sc) nginx">/etc/apt/sources.list.d/nginx.list
echo "deb-src http://nginx.org/packages/debian/ $(lsb_release -sc) nginx">>/etc/apt/sources.list.d/nginx.list
apt update
apt install -y nginx
apt install -y openssl
systemctl start nginx  
apt install apache2 -y
reboot

#зайти и изменить порт на apache2 sudo nano /etc/apache2/ports.conf  Listen 80 на 8888
#sudo systemctl restart apache2
#systemctl status apache2 
#systemctl status nginx 
