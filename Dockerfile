FROM docker.io/bitnami/minideb:bullseye

RUN install_packages python3 python3-pip

RUN pip install langchain

WORKDIR /app
COPY huggingfacelocal.py .

