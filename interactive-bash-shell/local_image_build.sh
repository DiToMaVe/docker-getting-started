#!/bin/bash
podman machine stop
podman machine start
podman stop -a
podman build . -t  bash-image
