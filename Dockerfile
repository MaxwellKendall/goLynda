FROM golang

ENV SOURCES ${GOPATH}/src/github.com/MaxwellKendall/cloudNativeGo

COPY . ${SOURCES}

RUN cd ${SOURCES} && CGO_ENABLED=0 go install

ENV PORT 8080

ENTRYPOINT cloudNativeGo
