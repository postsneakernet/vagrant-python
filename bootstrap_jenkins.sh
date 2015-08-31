wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get -qqy update
apt-get -qqy install jenkins
apt-get -qqy install xvfb
apt-get -qqy install firefox
reboot
