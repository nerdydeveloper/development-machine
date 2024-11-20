echo "Updating packages - This may take a few minutes!"
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -q update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -q upgrade
echo "Installing Python and Git"
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -q install git python3-apt python3-mysqldb
echo "Install Ansible"
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -q install ansible
echo "Install Ansible MySQL Plugin"
sudo DEBIAN_FRONTEND=noninteractive ansible-galaxy collection install community.mysql
echo "Running Ansible Playbook"
cd /Ansible
sudo ansible-playbook -i development vagrant.yml
