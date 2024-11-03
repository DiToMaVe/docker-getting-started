#!/bin/bash
podman machine stop -a
podman machine start
podman build . -t  flask-image
