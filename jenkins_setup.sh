#!/bin/sh
wget -O ~/jenkins-cli.jar http://localhost:8080/jnlpJars/jenkins-cli.jar;
java -jar ~/jenkins-cli.jar -s http://localhost:8080 groovy /vagrant/jenkins.groovy
