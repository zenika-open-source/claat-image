FROM golang:1

# Install claat tool
# https://github.com/googlecodelabs/tools/blob/master/claat/README.md#install
RUN CGO_ENABLED=0 go get github.com/googlecodelabs/tools/claat

FROM scratch

WORKDIR /app
COPY --from=0 /go/bin/claat /claat

EXPOSE 9090
VOLUME /app

ENTRYPOINT ["/claat"]