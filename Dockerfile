FROM golang:1.20
ENV PORT 80
EXPOSE 80

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go build -v -o app ./...
RUN mv ./app /go/bin/

CMD ["app"]