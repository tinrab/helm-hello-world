FROM golang:1.10.2-alpine3.7 AS build
RUN apk --no-cache add gcc g++ make ca-certificates
WORKDIR /go/src/app
COPY vendor vendor
COPY Gopkg.lock Gopkg.toml ./
COPY hello-world hello-world
RUN go install ./...

FROM alpine:3.7
WORKDIR /usr/bin
COPY --from=build /go/bin .
