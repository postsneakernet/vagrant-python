apt-get -qqy update
apt-get -qqy install postgresql
apt-get -qqy install python-pip python-dev python3-dev libpq-dev
apt-get -qqy install git
apt-get -qqy install vim-gtk

pip install virtualenvwrapper
pip install flake8

su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'

vagrantTip="The shared directory is located at /vagrant\n"
echo -e $vagrantTip > /etc/motd
