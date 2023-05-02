#!/bin/bash
while true; do
    if [ -f "/web-server/manage.py" ]; then
        python manage.py makemigrations blog
        python manage.py makemigrations projects
        python manage.py migrate blog
        python manage.py migrate projects
        gunicorn personal_portfolio.wsgi:application --bind 0.0.0.0:8000
        break
    else
        echo "No se encontró el archivo manage.py en la carpeta"
        echo "Revisando nuevamente en 5 segundos."
        sleep "5"
    fi
done