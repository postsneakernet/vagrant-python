# non-privileged

curl -so ~/.django_bash_completion https://raw.githubusercontent.com/django/django/master/extras/django_bash_completion
curl -s https://raw.githubusercontent.com/postsneakernet/dotfiles/master/bash_profile >> ~/.profile

echo $'\n' >> ~/.profile
echo "# virtualenvwrapper settings" >> ~/.profile
echo "export PROJECT_HOME=/vagrant/projects" >> ~/.profile

mkdir ~/.config
sudo cp /vagrant/vagrant_setup/flake8 ~/.config/flake8
