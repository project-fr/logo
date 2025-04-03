FROM alpine:latest
RUN apk update
RUN apk add --update python3 py3-pip nodejs npm cairo librsvg
RUN python3 -m venv /venv
RUN /venv/bin/pip3 install scour cairosvg
RUN npm i -g svgo
WORKDIR /mnt/build
ENTRYPOINT ["/bin/sh", "-c", "\
  /venv/bin/scour -i /mnt/origin.svg -o output-scour.svg\
  --enable-viewboxing --enable-id-stripping --enable-comment-stripping --shorten-ids --indent=none &&\
  svgo -i output-scour.svg -o output.svg &&\
  rm -rf output-scour.svg &&\
  /venv/bin/cairosvg -W 500 -H 500 -d 96 -o output.png output.svg\
  "]
