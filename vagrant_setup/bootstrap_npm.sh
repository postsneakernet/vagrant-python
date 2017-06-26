# non-privileged
sudo curl --silent --location https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get -qqy install nodejs

sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get -qqy install ruby2.3
sudo gem install sass

npm config set prefix '/home/vagrant/.npm-packages'
export PATH="$PATH:$HOME/.npm-packages/bin"

echo $'\n' >> ~/.profile
echo "# npm settings" >> ~/.profile
echo 'export PATH="$PATH:$HOME/.npm-packages/bin"' >> ~/.profile

npm install -g bower
npm install -g grunt-cli
npm install -g gulp-cli
npm install -g express-generator

vagrantTip="npm: use npm install --no-bin-links if running from a Windows host"
echo -e $vagrantTip >> /vagrant/vagrant_setup/motd
