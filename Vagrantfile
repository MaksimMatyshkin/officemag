Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian9"
  config.disksize.size = '10GB' 
  config.vm.box_check_update = false
  config.vm.hostname = "test"
  config.vm.provider "virtualbox" do |vb|
  vb.name = "test"
  vb.gui = false
  vb.memory = 2048
  vb.cpus = 2 
  config.vm.provision "shell", path: "provision.sh"
end
end
