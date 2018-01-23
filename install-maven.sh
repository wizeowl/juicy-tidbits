#!/bin/bash
#wget http://www-eu.apache.org/dist/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz
tar xzvf apache-maven-3.5.2-bin.tar.gz
sudo mv apache-maven-3.5.2 /opt/maven
sudo echo "export PATH=$PATH:/opt/maven/bin/" >> ~/.profile
export PATH=$PATH:/opt/maven/bin/
