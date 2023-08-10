FROM golang:1.21.0-alpine

COPY . /app
WORKDIR /app

RUN go mod download && go mod verify

RUN go build -v -o ./build/golearn

EXPOSE 80

CMD ["./build/golearn"]
