#!/bin/sh
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput
gunicorn testproj.wsgi -b :8000 -w 3 -b 0.0.0.0:8000