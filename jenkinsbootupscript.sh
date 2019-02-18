#!/bin/bash 
#author: venkat
#version: 1.0
#purpose: installing the jenkins as boot up service 
yum update -y
#install the java 
yum install java-1.8.0-openjdk-devel -y
#install the git
yum install git -y
#Enable the repo for jenkins 
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
yum update -y 
#install the jenkins
yum install jenkins --nogpgcheck -y 
systemctl enable jenkins
systemctl start jenkins
