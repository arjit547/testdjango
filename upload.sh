#!/bin/bash
cd /home/ubuntu
sudo apt-get update
sudo apt-get install python3-pip apache2 libapache2-mod-wsgi-py3 -y
sudo pip install virtualenv
virtualenv myenv
source myenv/bin/activate
pip install django gunicorn
