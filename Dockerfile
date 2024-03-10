FROM alpine:edge
# zig is currently only in testing
RUN apk --no-cache add zig --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing

RUN mkdir -p /opt/app
WORKDIR /opt/app
