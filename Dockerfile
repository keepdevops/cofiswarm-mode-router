# Multi-stage build for the cofiswarm-mode-router service.
FROM golang:1.25-alpine AS build
RUN apk add --no-cache git
WORKDIR /src
COPY go.mod go.sum* ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 go build -trimpath -o /out/app ./cmd/cofiswarm-mode-router

FROM alpine:3.20
RUN adduser -D -u 10001 app
COPY --from=build /out/app /usr/local/bin/cofiswarm-mode-router
USER app
EXPOSE 8024
ENTRYPOINT ["/usr/local/bin/cofiswarm-mode-router"]
