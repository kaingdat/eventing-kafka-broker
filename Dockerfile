FROM     golang:1.22-alpine as builder
WORKDIR  /app
COPY     . /app
RUN      cd /app/control-plane/cmd/kafka-controller && go build .

FROM gcr.io/distroless/static:nonroot
USER 65532
COPY --from=builder /app/control-plane/cmd/kafka-controller/kafka-controller /kafka-controller
CMD ["/kafka-controller"]
