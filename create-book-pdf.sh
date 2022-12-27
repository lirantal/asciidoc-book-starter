#!/usr/bin/env sh
# Docker image: https://hub.docker.com/r/asciidoctor/docker-asciidoctor
# Docker image repository: https://github.com/asciidoctor/docker-asciidoctor

docker run --rm -v $(pwd)/book:/documents/ asciidoctor/docker-asciidoctor asciidoctor-pdf \
    -a pdf-themesdir=themes \
    -a pdf-theme=basic \
    -a pdf-fontsdir=fonts \
    index.adoc