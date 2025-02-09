FROM golang:1.14

WORKDIR /go/src
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...
RUN go build

EXPOSE 8080
CMD [ "go", "run", "/go/src/main.go"]
