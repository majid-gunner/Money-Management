# This docker file is used for local development via docker-compose
# Creating image based on official python3.10 image
FROM python:3.10

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SUPERUSER_PASSWORD admin


# Installing all python dependencies
ADD requirements/ requirements/
RUN pip install -r requirements/base.txt

 
CMD	django-admin startproject money .; \
	python3 manage.py makemigrations --noinput && \
	python3 manage.py migrate --noinput && \
	python3 manage.py createsuperuser --user admin --email admin@localhost --noinput; \
	python3 manage.py runserver 0.0.0.0:8000


# Get the django project into the docker container
ADD ./ /app/


