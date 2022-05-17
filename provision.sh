sudo apt update
sudo apt install vim -y
sudo apt install wget -y
sudo apt install htop -y
sudo apt install tmux -y
sudo apt install php5.6 -y
sudo apt install apache2 -y
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 8888 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -I INPUT 1 -i lo -j ACCEPT
sudo iptables -A INPUT -j DROP
