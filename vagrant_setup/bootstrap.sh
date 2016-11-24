# sudo
apt-get -qqy update

timedatectl set-timezon America/New_York

apt-get -qqy install postgresql
apt-get -qqy install python-pip python-dev python3-dev libpq-dev
apt-get -qqy install git
apt-get -qqy install vim-gtk

wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh

pip install virtualenvwrapper
pip install flake8

su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'

vagrantTip="Vagrant Tips:\nThe shared directory is located at /vagrant"
echo -e $vagrantTip > /etc/motd
