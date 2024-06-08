Vagrant.configure("2") do |config|
  
  # Global configuration for all VMs
  config.vm.synced_folder "./scripts", "/home/vagrant/Host_shared"

  # Define the first VM: Web Server
    config.vm.define "web" do |web|
      web.vm.box = "ubuntu/jammy64"
      web.vm.network "private_network", ip: "192.168.50.4"
      web.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
      end
      web.vm.provision "shell", path: "scripts/setup_web.sh"
    end

  # Define the third VM: Jenkins Server
    config.vm.define "jenkins" do |jenkins|
      jenkins.vm.box = "ubuntu/jammy64"
      jenkins.vm.network "private_network", ip: "192.168.50.6"
      jenkins.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
      end
      jenkins.vm.provision "shell", path: "scripts/setup_jenkins.sh"

      # Forward port 8080 from the host to the VM
      jenkins.vm.network "forwarded_port", host_ip: "127.0.0.4", guest: 8080, host: 8083
    end
end
