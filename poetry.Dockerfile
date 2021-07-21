# base image that you want; must be accessible publicly
FROM python:3.9.6-slim
# required lines
WORKDIR /gridai/project
COPY . .
# space for pip install and prevent OSError: [Errno 28] No space left on device
ARG TMPDIR=/var/tmp
# any setup commands that you want
RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install
# no need to set ENTRYPOINT or CMD instructions