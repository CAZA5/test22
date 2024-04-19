#!/usr/bin/env bash
# Exit on error
set -o errexit
pip install poetry
# Modify this line as needed for your package manager (pip, poetry, etc.)
pip install -r requirements.txt

# Convert static asset files
python manage.py collectstatic --no-input
pip freeze > requirements.txt
pip install -r requirements.txt

# Apply any outstanding database migrations
python manage.py migrate