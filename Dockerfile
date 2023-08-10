FROM golang:1.21.0-alpine

COPY ./src /app

WORKDIR /app