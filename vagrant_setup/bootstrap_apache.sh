# sudo
apt-get -qqy install apache2

mkdir -p /vagrant/projects
cp -r /var/www/html /vagrant/projects
cp /vagrant/vagrant_setup/projectname.conf /etc/apache2/sites-available/projectname.conf

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant/projects /var/www
fi

apt-get -qqy install libapache2-mod-wsgi

vagrantTip="Apache: projectname.localhost:8888\n"
echo -e $vagrantTip >> /etc/motd
