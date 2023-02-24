FROM golang:1.16
ENV PORT 3600
EXPOSE 3600

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go build -v -o app ./...
RUN mv ./app /go/bin/

CMD ["app"]