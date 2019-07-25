FROM ubuntu:16.04
COPY foo /tmp
ENV LOG_DIR /var/log
ARG env=develop
WORKDIR /usr
EXPOSE 8080/udp
LABEL com.my-domain.version="1.0"
RUN echo "Hello World" && \
    rm -f dummy
RUN ["/bin/bash", "-c", "touch dummy"]
CMD ["echo", "Dockerfile CMD demo"]
