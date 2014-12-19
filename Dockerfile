FROM java:openjdk-8u40
MAINTAINER Hideki IGARASHI <hideki.develop@gmail.com>

ENV GAIDEN_VERSION 1.0

RUN curl -L -o /tmp/gaiden.zip https://github.com/kobo/gaiden/releases/download/v$GAIDEN_VERSION/gaiden-$GAIDEN_VERSION.zip

RUN unzip /tmp/gaiden.zip -d /opt
RUN ln -s /opt/gaiden-$GAIDEN_VERSION /opt/gaiden

ENTRYPOINT ["/opt/gaiden/bin/gaiden"]
