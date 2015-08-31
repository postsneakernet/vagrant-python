apt-get -qqy update
apt-get -qqy install postgresql
apt-get -qqy install python-pip python-dev
apt-get -qqy install git

curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get -qqy install nodejs

pip install virtualenvwrapper

su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'

vagrantTip="The shared directory is located at /vagrant\nTo access your shared files: cd /vagrant\nDon't forget to run jenkins_setup.sh\n"
echo -e $vagrantTip > /etc/motd
