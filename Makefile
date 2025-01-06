# Makefile for building a container from a Containerfile

IMAGE_NAME := quay.io/bryonbaker/sleep-forever
TAG := latest
TAG2 := v1.0.1

.PHONY: all build push clean

all: build push

build:
	podman build -t $(IMAGE_NAME):$(TAG) .
	podman tag  $(IMAGE_NAME):$(TAG) $(IMAGE_NAME):$(TAG2)

push:
	podman push $(IMAGE_NAME):$(TAG)
	podman push $(IMAGE_NAME):$(TAG2)

clean:
	podman rmi -f $(IMAGE_NAME):$(TAG) || true
	podman rmi -f $(IMAGE_NAME):$(TAG2) || true
