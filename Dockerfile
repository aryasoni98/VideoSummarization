FROM python:3.8-slim-buster
ENV PIP_DEFAULT_TIMEOUT=100 \
    PYTHONUNBUFFERED=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PYTHONFAULTHANDLER=1
ADD . /
WORKDIR /

RUN pip install -r requirements.txt