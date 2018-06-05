#Install mongo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
#need to change bind to 0.0.0.0 in /etc/mongod.conf file and restart

#Install memcached
sudo apt-get update
sudo apt-get install memcached
sudo apt-get install -y libmemcached-tools
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/memcached.conf 
#need to change bind to 0.0.0.0 in  /etc/memcached.conf file and restart
sudo systemctl restart memcached

#Install redis "https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04"
#Install elastic search "https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-elasticsearch-on-ubuntu-16-04"