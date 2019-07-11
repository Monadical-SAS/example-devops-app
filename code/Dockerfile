# Pull image
FROM python:3.7-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Work directory
WORKDIR /code

# Install dependencies and pyscopg2
RUN pip install pipenv
#COPY Pipfile Pipfile.lock /code/
#RUN pipenv install --system
RUN pipenv install psycopg2-binary
COPY Pipfile Pipfile.lock /code/
RUN pipenv install --system
# Copy project
COPY . /code/

#postgres logs

VOLUME ["/var/lib/postgresql/data/", "/etc/postgresql", "/var/log/postgresql"]
