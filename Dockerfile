FROM ubuntu:16.04
MAINTAINER willemvd <willemvd@github>

COPY . /bd_build

RUN /bd_build/prepare.sh && \
    /bd_build/system_services.sh && \
    /bd_build/utilities.sh && \
    /bd_build/cleanup.sh

ENTRYPOINT ["/sbin/my_init", "--"]

