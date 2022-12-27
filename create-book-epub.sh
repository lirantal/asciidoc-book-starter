#!/usr/bin/env sh
# Docker image: https://hub.docker.com/r/asciidoctor/docker-asciidoctor
# Docker image repository: https://github.com/asciidoctor/docker-asciidoctor

docker run --rm -v $(pwd)/book:/documents/ asciidoctor/docker-asciidoctor asciidoctor-epub3 \
    index.adoc