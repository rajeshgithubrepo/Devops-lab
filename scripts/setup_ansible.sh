# scripts/setup_ansible.sh
#!/bin/bash
sudo apt update
sudo apt install -y ansible
echo "[web]
192.168.50.4
[db]
192.168.50.5
[jenkins]
192.168.50.6" | sudo tee /etc/ansible/hosts
