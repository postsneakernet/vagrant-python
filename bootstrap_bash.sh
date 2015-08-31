curl -so ~/django_bash_completion https://raw.githubusercontent.com/django/django/master/extras/django_bash_completion

echo $'\n' >> ~/.profile
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python" >> ~/.profile
echo "export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv" >> ~/.profile
echo "#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='-p /usr/bin/python3'" >> ~/.profile
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.profile
echo "export PROJECT_HOME=/vagrant" >> ~/.profile
echo "source /usr/local/bin/virtualenvwrapper_lazy.sh" >> ~/.profile
echo ". ~/django_bash_completion" >> ~/.profile
