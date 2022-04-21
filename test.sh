sudo apt-get update
sudo apt-get -y upgrade

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" | sudo tee /etc/apt/sources.list.d/postgresql-pgdg.list &gt; /dev/null

sudo apt-get update
sudo apt install postgresql-13
sudo netstat -naptu | grep postgres

sudo systemctl start postgresql