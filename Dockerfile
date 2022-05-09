FROM python:3.10-alpine

# https://github.com/python-poetry/poetry/discussions/1879#discussioncomment-216865
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    # https://python-poetry.org/docs/configuration/#using-environment-variables
    POETRY_HOME=/opt/poetry \
    POETRY_NO_INTERACTION=1 \
    POETRY_VIRTUALENVS_CREATE=false

ENV PATH="/opt/poetry/bin:${PATH}"

RUN apk add --no-cache \
    curl \
    gcc \
    libressl-dev \
    musl-dev \
    jpeg-dev \
    zlib-dev \
    libffi-dev && \
    curl -sSL https://install.python-poetry.org | python3 - && \
    apk del \
        curl \
        gcc \
        libressl-dev \
        jpeg-dev \
        zlib-dev \
        musl-dev \
        libffi-dev

CMD ["poetry", "--version"]