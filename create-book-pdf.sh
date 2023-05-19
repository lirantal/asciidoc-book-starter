#!/usr/bin/env sh
# Docker image: https://hub.docker.com/r/asciidoctor/docker-asciidoctor
# Docker image repository: https://github.com/asciidoctor/docker-asciidoctor

# The directory where the book source is located
BOOK_SOURCE_DIR=book
# The directory where the book's generated output files will be created
BOOK_BUILD_DIR=build
#     To override theme configuration file you can pass the following command-line arguments:
#
#    -a pdf-themesdir=$BOOK_SOURCE_DIR/themes \
#    -a pdf-theme=$1 \
#    -a pdf-fontsdir=$BOOK_SOURCE_DIR/fonts \
docker run --rm -v $(pwd):/documents/ asciidoctor/docker-asciidoctor asciidoctor-pdf \
    -D $BOOK_BUILD_DIR \
    $BOOK_SOURCE_DIR/index.adoc