FROM public.ecr.aws/spacelift/runner-terraform:latest as spacelift
FROM golang:1.13-alpine as builder
FROM fugue/regula:latest as regula

WORKDIR /tmp

FROM alpine:latest

COPY --from=regula /bin/regula /usr/local/bin
RUN adduser --disabled-password --no-create-home --uid=1983 spacelift