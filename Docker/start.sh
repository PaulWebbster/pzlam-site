#!/usr/bin/env bash
exec gunicorn pzlamsite.wsgi:application --bind 0.0.0.0:8000 --workers 3