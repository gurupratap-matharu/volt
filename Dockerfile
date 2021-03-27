FROM python:3-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY Pipfile Pipfile.lock /code/
RUN /usr/local/bin/python -m pip install --upgrade pip && \ 
    pip install pipenv && pipenv install --system

COPY . /code/

EXPOSE 5005
