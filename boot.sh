#!/bin/bash
exec gunicorn --config gunicorn_config.py api:app
#Or alternatively,
#exec gunicorn -b 0.0.0.0:8080 --access-logfile - --error-logfile - api:app
