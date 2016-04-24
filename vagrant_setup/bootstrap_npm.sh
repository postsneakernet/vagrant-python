# non-privileged
sudo curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -
sudo apt-get -qqy install nodejs
sudo gem install sass

npm config set prefix '/home/vagrant/.npm-packages'
export PATH="$PATH:$HOME/.npm-packages/bin"

echo $'\n' >> ~/.profile
echo "# npm settings" >> ~/.profile
echo 'export PATH="$PATH:$HOME/.npm-packages/bin"' >> ~/.profile

npm install -g bower
npm install -g grunt-cli

vagrantTip="Use --no-bin-links flag for npm e.g. npm install --no-bin-links\n"
echo -e $vagrantTip > /vagrant/vagrant_setup/motd
