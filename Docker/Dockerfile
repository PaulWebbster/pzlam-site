# Use an official Python runtime as a parent image
FROM python:3.7
LABEL maintainer="hello@wagtail.io"

# Set environment varibles
ENV PYTHONUNBUFFERED 1
ENV DJANGO_ENV dev

COPY ./requirements.txt /code/requirements.txt
RUN pip install --upgrade pip
# Install any needed packages specified in requirements.txt
RUN pip install -r /code/requirements.txt
RUN pip install gunicorn

RUN useradd wagtail
RUN mkdir -p /home/wagtail
RUN chown -R wagtail /code
RUN chown -R wagtail /home/wagtail
USER wagtail

COPY Docker/start.sh /home/wagtail/start.sh

WORKDIR /code
EXPOSE 8000
CMD exec /home/wagtail/start.sh
