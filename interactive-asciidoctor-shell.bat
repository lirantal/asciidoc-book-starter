REM Docker image: https://hub.docker.com/r/asciidoctor/docker-asciidoctor
REM Docker image repository: https://github.com/asciidoctor/docker-asciidoctor

docker run -it -v "%CD%/book":/documents/ asciidoctor/docker-asciidoctor