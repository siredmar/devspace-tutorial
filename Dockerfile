FROM golang:alpine3.20 as builder
RUN apk add make
COPY . /app
RUN cd /app && make build

FROM alpine:3.20
COPY --from=builder /app/bin/mydemo /mydemo 
CMD ["/mydemo"]
