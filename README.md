# Python Alpine Poetry Docker Image
[![GitHub last commit](https://img.shields.io/github/last-commit/ SSomov/python-alpine-poetry)](https://github.com/SSomov/python-alpine-poetry)

[Poetry](https://python-poetry.org/docs/) is a tool for
**dependency management** and **packaging** in Python.

This repository provides a lightweight alpine-based container image with _Poetry_ preinstalled.


### Build

```docker build . -t python_alpine_poetry:latest```

### Version Poetry

```docker run -it python_alpine_poetry```