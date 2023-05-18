REM Docker image: https://hub.docker.com/r/asciidoctor/docker-asciidoctor
REM Docker image repository: https://github.com/asciidoctor/docker-asciidoctor
REM The directory where the book source is located
SET BOOK_SOURCE_DIR=book
REM The directory where the book's generated output files will be created
SET BOOK_BUILD_DIR=build

docker run --rm -v "%CD%":/documents/ asciidoctor/docker-asciidoctor asciidoctor-pdf -D %BOOK_BUILD_DIR% %BOOK_SOURCE_DIR%/index.adoc