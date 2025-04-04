FROM alpine:latest
RUN apk add --update nodejs npm
WORKDIR /build-logic
COPY build-logic/index.js index.js
COPY build-logic/svgo.config.mjs svgo.config.mjs
COPY build-logic/package.json package.json
RUN npm i
ENTRYPOINT ["/bin/sh", "-c", "node index.js"]
