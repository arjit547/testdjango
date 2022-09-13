#!/bin/bash
cd /home/ubuntu
gunicorn --bind 0.0.0.0:8000 testdjango.wsgi
python manage.py runserver 0:8000 &
