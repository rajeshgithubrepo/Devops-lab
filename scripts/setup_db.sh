# scripts/setup_db.sh Database Server Setup Script
#!/bin/bash
sudo apt update
sudo apt install -y mysql-server
sudo systemctl start mysql
sudo systemctl enable mysql
sudo mysql -e "CREATE USER 'devops'@'%' IDENTIFIED BY 'password';"
sudo mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'devops'@'%';"
sudo mysql -e "FLUSH PRIVILEGES;"
