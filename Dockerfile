FROM public.ecr.aws/spacelift/runner-terraform:latest as spacelift
FROM golang:1.21.5-alpine as builder
FROM hub.docker.com/r/fugue/regula:latest as regula
WORKDIR /tmp

FROM alpine:latest

RUN adduser --disabled-password --no-create-home --uid=1983 spacelift
