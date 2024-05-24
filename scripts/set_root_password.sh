# scripts/set_root_password.sh
#!/bin/bash

# Set the root password (replace 'yourpassword' with your desired password)
echo "root:Admin@123" | sudo chpasswd

# Enable root SSH login with password
sudo sed -i 's/^#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart ssh
