# syntax=docker/dockerfile:1

FROM python:3.10.0

WORKDIR /backend

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

RUN python3 manage.py collectstatic --noinput

EXPOSE 8000
