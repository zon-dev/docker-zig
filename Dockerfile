FROM alpine:edge
# zig is currently only in testing
RUN apk add zig

RUN mkdir -p /opt/app
WORKDIR /opt/app
