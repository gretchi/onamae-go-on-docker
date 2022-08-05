FROM golang:1.19.0-alpine3.16 as build

WORKDIR /root/onamae-go
COPY . /root/onamae-go
RUN go build

FROM alpine:3.16 as runner

ENV HOSTNAME=www
ENV DOMAIN=example.com
ENV ONAMAE_USERNAME=0000000
ENV ONAMAE_PASSWORD=XXXXXXXX
ENV INTERVAL=1h

WORKDIR /root
COPY --from=0 /root/onamae-go/onamae-go /usr/local/bin/onamae-go
COPY run.sh .
RUN chmod +x run.sh

CMD ["/root/run.sh"]
