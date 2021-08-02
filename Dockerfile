FROM python:3.8.11-alpine3.13
ADD . /app
WORKDIR /app
RUN pip install flask gunicorn
CMD gunicorn --bind 0.0.0.0:$PORT app:app