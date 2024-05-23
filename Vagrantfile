Vagrant.configure("2") do |config|
  
  # Global configuration for all VMs
  config.vm.synced_folder "./scripts", "/vagrant_shared"

  # Define the first VM: Web Server
    config.vm.define "web" do |web|
      web.vm.box = "ubuntu/bionic64"
      web.vm.network "private_network", ip: "192.168.50.4"
      web.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
      end
      #web.vm.provision "shell", path: "scripts/setup_web.sh"
      #web.vm.provision "shell", path: "scripts/setup_docker.sh"
      #web.vm.provision "shell", path: "scripts/setup_minikube.sh"
      #web.vm.provision "shell", path: "scripts/setup_ansible.sh"
      #web.vm.provision "shell", path: "scripts/setup_terraform.sh"
    end

  # Define the second VM: Database Server
    config.vm.define "db" do |db|
      db.vm.box = "ubuntu/bionic64"
      db.vm.network "private_network", ip: "192.168.50.5"
      db.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
      end
      #db.vm.provision "shell", path: "scripts/setup_db.sh"
    end

  # Define the third VM: Jenkins Server
    config.vm.define "jenkins" do |jenkins|
      jenkins.vm.box = "ubuntu/bionic64"
      jenkins.vm.network "private_network", ip: "192.168.50.6"
      jenkins.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
      end
      #jenkins.vm.provision "shell", path: "scripts/setup_jenkins.sh"
    end
end
