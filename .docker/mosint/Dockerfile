FROM golang:alpine
RUN apk add git
RUN go install -v github.com/alpkeskin/mosint@latest
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
