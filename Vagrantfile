Vagrant.configure("2") do |config|
  config.vm.provider :docker do |d|
     d.build_dir = "."
     d.remains_running = true
     d.has_ssh = true
     d.name = 'WilsonDev'
  end
  config.vm.synced_folder "Ansible/", "/Ansible", mount_options: ["fmode=666"]
  config.vm.synced_folder "web/", "/web", mount_options: ["fmode=666"]
  config.vm.synced_folder "mysql-dumps/", "/mysql-dumps", mount_options: ["fmode=666"]
  config.vm.network "private_network", ip: "33.33.33.66", auto_config: false
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 3306, host: 33066
  config.vm.network "forwarded_port", guest: 5173, host: 5174
  config.vm.define 'wilsondev'
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = true
  config.hostmanager.include_offline = true
  config.hostmanager.aliases = %w(wilsondev.local)
  config.vm.provision :shell, path: "provision.sh", privileged: false
end