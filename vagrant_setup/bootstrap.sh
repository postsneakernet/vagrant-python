apt-get -qqy update
apt-get -qqy install postgresql
apt-get -qqy install python-pip python-dev python3-dev libpq-dev
apt-get -qqy install git
apt-get -qqy install apache2

cp -r /var/www/html /vagrant/projects/html
cp /vagrant/vagrant_setup/projectname.conf /etc/apache2/sites-available/projectname.conf

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant/projects /var/www
fi

apt-get -qqy install libapache2-mod-wsgi

curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -
apt-get -qqy install nodejs

pip install virtualenvwrapper

su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'

vagrantTip="The shared directory is located at /vagrant\nTo access your shared files: cd /vagrant\n"
echo -e $vagrantTip > /etc/motd
