FROM golang:1.17.2-bullseye

# Install claat tool
# https://github.com/googlecodelabs/tools/blob/master/claat/README.md#install
RUN CGO_ENABLED=0 go install github.com/googlecodelabs/tools/claat@latest

FROM scratch

WORKDIR /app
COPY --from=0 /go/bin/claat /claat

EXPOSE 9090
VOLUME /app

ENTRYPOINT ["/claat"]
