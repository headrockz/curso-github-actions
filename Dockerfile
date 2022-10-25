FROM golang:alpine 

RUN apk add bash
RUN mkdir /app

COPY . /app

WORKDIR /app

RUN go build -o server .

CMD [ "/app/server" ]