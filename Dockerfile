FROM docker.io/bitnami/minideb:bullseye

RUN install_packages python3 python3-pip

RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
RUN pip3 install langchain
RUN pip3 install transformers

WORKDIR /app
COPY huggingfacelocal.py .

