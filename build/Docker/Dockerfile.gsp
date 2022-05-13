FROM ${prefix}/dev-base${suffix}:1.1.0

# copy files required for debian repository
ADD . /tmp/deb

RUN echo "deb [trusted=yes] file:///tmp/deb /" > /etc/apt/sources.list.d/tmp.list && \
    apt-get update && \
    apt-get install -y --allow-unauthenticated ${name}-${version} && \
    rm -f /etc/apt/sources.list.d/tmp.list /tmp/deb/*

USER runner