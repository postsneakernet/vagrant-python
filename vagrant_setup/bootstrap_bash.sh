# non-privileged
echo $'\n' >> ~/.profile
echo "# virtualenv settings" >> ~/.profile
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python" >> ~/.profile
echo "export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv" >> ~/.profile
echo "export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='-p /usr/bin/python3'" >> ~/.profile
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.profile
echo "export PROJECT_HOME=/vagrant/projects" >> ~/.profile
echo "source /usr/local/bin/virtualenvwrapper_lazy.sh" >> ~/.profile

echo $'\n' >> ~/.profile
echo "# django settings" >> ~/.profile
curl -so ~/django_bash_completion https://raw.githubusercontent.com/django/django/master/extras/django_bash_completion
echo ". ~/django_bash_completion" >> ~/.profile

echo $'\n' >> ~/.profile
echo "# cd settings" >> ~/.profile
echo "alias ..='cd ..'" >> ~/.profile
echo "alias ..2='cd ../..'" >> ~/.profile
echo "alias ..3='cd ../../..'" >> ~/.profile
echo "alias ..4='cd ../../../..'" >> ~/.profile