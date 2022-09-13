#!/bin/bash
cd /home/ubuntu
source myenv/bin/activate
sudo fuser -k 8000/tcp

gunicorn --bind 0.0.0.0:8000 test_django_app.wsgi
python manage.py runserver 0:8000 &
