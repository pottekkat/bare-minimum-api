# syntax=docker/dockerfile:1

FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o /bare-minimum-api

EXPOSE 8080

ENTRYPOINT [ "/bare-minimum-api" ]
