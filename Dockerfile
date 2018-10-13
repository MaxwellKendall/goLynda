# FROM golang

# ENV SOURCES ${GOPATH}/src/github.com/MaxwellKendall/cloudNativeGo

# COPY . ${SOURCES}

# RUN cd ${SOURCES} && CGO_ENABLED=0 go install

# ENV PORT 8080
# EXPOSE 8080

# ENTRYPOINT cloudNativeGo


FROM alpine:3.5
MAINTAINER Max

# Refering to pre-build executible file during run time:
COPY ./cloudNativeGo  /app/binaryExecutable
RUN chmod +x /app/binaryExecutable

ENV PORT=9191
EXPOSE 9191

ENTRYPOINT /app/binaryExecutable