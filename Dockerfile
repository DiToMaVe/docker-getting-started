FROM alpine:latest
RUN apk update && apk add bash
ENTRYPOINT ["/bin/bash"]
