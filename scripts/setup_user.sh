# scripts/setup_admin1_user.sh
#!/bin/bash

# Create user 'Admin' with password 'Admin@123'
sudo useradd -m -s /bin/bash admin1
echo 'admin1:Admin@123' | sudo chpasswd

# Add 'admin1' to the sudo group
sudo usermod -aG sudo admin1

# Enable SSH access for 'admin1'
sudo mkdir -p /home/admin1/.ssh
sudo cp /home/vagrant/.ssh/authorized_keys /home/admin1/.ssh/
sudo chown -R admin1:admin1 /home/admin1/.ssh
sudo chmod 700 /home/admin1/.ssh
sudo chmod 600 /home/admin1/.ssh/authorized_keys

# Optional: Allow password authentication (not recommended for production)
sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart ssh

sudo cp /home/admin1/.ssh/authorized_keys /home/vagrant/vagrant_shared

