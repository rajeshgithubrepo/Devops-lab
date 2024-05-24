# scripts/setup_jenkins.sh
#!/bin/bash
sudo apt update
sudo apt-get install init-system-helpers=1.56+nmu1~ubuntu18.04.1 -y
sudo apt upgrade init-system-helpers -y
sudo apt install -y openjdk-11-jdk
sudo apt update -y
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins
sudo systemctl start jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo systemctl status jenkins

