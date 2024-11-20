# WILSONDEV DEVELOPMENT MACHINE
A Ubuntu 22.04 LTS development machine which can be used for Laravel projects, using the following technologies
- NGINX
- PHP (Version 8.3)
- MySQL

The machine was made for use with vagrant, using Docker as the VM provider.

# INSTALLATION
1. Install Docker Desktop from https://www.docker.com
2. Install vagrant from https://www.vagrantup.com
3. Once vagrant is installed, run the following command:
vagrant plugin install vagrant-hostmanager
4. Extract this git repo into the folder of your choice
5. Once extracted, navigate to the folder of your choice in terminal and run the following command:
vagrant up

You should see the vagrant box start to provision, and should be visible within Docker Desktop. 

# ADD NEW WEBSITES
To add new websites, new domains must be added the following sections
1. in the *config.hostmanager.aliases* section of Vagrantfile
2. in the *Add Websites* section in Ansible/vagrant.yml

This section includes a "database" attribute, this allows you to change the database name for the application should you need to.

# MySQL
To import MySQL databases, you can do so by placing a .sql file within the mysql-dumps folder with the same name as the database parameter in add new websites section. 

If your application requires multiple databases, then you can import a database on it's own using the dbimport role within the Ansible/vagrant.yml file.