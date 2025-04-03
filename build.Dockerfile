FROM alpine:latest
RUN apk update
RUN apk add --update python3 py3-pip nodejs npm inkscape
RUN python3 -m venv /venv
RUN /venv/bin/pip install scour
RUN npm i -g svgo
COPY build-logic.sh /build.sh
ENTRYPOINT ["/bin/sh", "/build.sh"]
