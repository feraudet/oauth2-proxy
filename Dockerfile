FROM ubuntu:focal
ADD https://github.com/oauth2-proxy/oauth2-proxy/releases/download/v7.0.1/oauth2-proxy-v7.0.1.linux-amd64.tar.gz /tmp/oauth2-proxy.tgz
RUN tar -C /tmp -xzf /tmp/oauth2-proxy.tgz \
  && mv /tmp/oauth2-proxy-v7.0.1.linux-amd64/oauth2-proxy /usr/bin/oauth2-proxy \
  && chmod 755 /usr/bin/oauth2-proxy \
  && rm -rf /tmp/oauth2-proxy-v7.0.1.linux-amd64 /tmp/oauth2-proxy.tgz
ENTRYPOINT ["/usr/bin/oauth2-proxy"]
