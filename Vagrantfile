# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "centos", primary: true, autostart: true do |node|
    config.ssh.insert_key = false
    node.vm.provision "file", source: "id_rsa.pub", destination: "/tmp/id_rsa.pub"
    node.vm.provision "shell", path: "centosbootstrap.sh"
    node.vm.box = "generic/centos8"
    node.vm.box_check_update = false
    node.vm.hostname = "centos.corp.devesh.in"
    node.vm.network "public_network", bridge: "eth0"
    node.vm.provider "hyperv" do |v|
      #v.enable_virtualization_extensions = true
      v.maxmemory = 4096
      v.cpus = 2
      v.linked_clone = true
      v.vmname = "centos"
    end
  end

  config.vm.define "ubuntu", primary: true, autostart: true do |node|
    config.ssh.insert_key = false
    node.vm.provision "file", source: "id_rsa.pub", destination: "/tmp/id_rsa.pub"
    node.vm.provision "shell", path: "forubuntugeneric.sh"
    node.vm.box = "generic/ubuntu2010"
    node.vm.box_check_update = false
    node.vm.hostname = "ubuntu.corp.devesh.in"
    node.vm.network "public_network", bridge: "eth0"
    node.vm.provider "hyperv" do |v|
      #v.enable_virtualization_extensions = true
      v.maxmemory = 4096
      v.cpus = 2
      v.linked_clone = true
      v.vmname = "ubuntu"
    end
  end

  config.vm.define "db", autostart: false do |node|
    config.ssh.insert_key = false
    node.vm.provision "file", source: "id_rsa.pub", destination: "/tmp/id_rsa.pub"
    node.vm.provision "shell", path: "forubuntugeneric.sh"
    node.vm.box = "generic/ubuntu2010"
    node.vm.box_check_update = false
    node.vm.provision "docker"
    node.vm.hostname = "db.corp.devesh.in"
    node.vm.network "public_network", bridge: "eth0"
    node.vm.provider "hyperv" do |v|
      #v.enable_virtualization_extensions = true
      v.maxmemory = 4096
      v.cpus = 2
      v.linked_clone = true
      v.vmname = "db"
    end
  end

  config.vm.define "mq", autostart: false do |node|
    config.ssh.insert_key = false
    node.vm.provision "file", source: "id_rsa.pub", destination: "/tmp/id_rsa.pub"
    node.vm.provision "shell", path: "forubuntugeneric.sh"
    node.vm.box = "generic/ubuntu2010"
    node.vm.box_check_update = false
    node.vm.provision "docker"
    node.vm.hostname = "mq.corp.devesh.in"
    node.vm.network "public_network", bridge: "eth0"
    node.vm.provider "hyperv" do |v|
      #v.enable_virtualization_extensions = true
      v.maxmemory = 4096
      v.cpus = 2
      v.linked_clone = true
      v.vmname = "mq"
    end
  end

  config.vm.define "api", autostart: false do |node|
    config.ssh.insert_key = false
    node.vm.provision "file", source: "id_rsa.pub", destination: "/tmp/id_rsa.pub"
    node.vm.provision "shell", path: "forubuntugeneric.sh"
    node.vm.box = "generic/ubuntu2010"
    node.vm.box_check_update = false
    node.vm.provision "docker"
    node.vm.hostname = "api.corp.devesh.in"
    node.vm.network "public_network", bridge: "eth0"
    node.vm.provider "hyperv" do |v|
      #v.enable_virtualization_extensions = true
      v.maxmemory = 4096
      v.cpus = 2
      v.linked_clone = true
      v.vmname = "api"
    end
  end

  config.vm.define "web", autostart: false do |node|
    config.ssh.insert_key = false
    node.vm.provision "file", source: "id_rsa.pub", destination: "/tmp/id_rsa.pub"
    node.vm.provision "shell", path: "forubuntugeneric.sh"
    node.vm.box = "generic/ubuntu2010"
    node.vm.box_check_update = false
    node.vm.provision "docker"
    node.vm.hostname = "web.corp.devesh.in"
    node.vm.network "public_network", bridge: "eth0"
    node.vm.provider "hyperv" do |v|
      #v.enable_virtualization_extensions = true
      v.maxmemory = 4096
      v.cpus = 2
      v.linked_clone = true
      v.vmname = "web"
    end
  end

end