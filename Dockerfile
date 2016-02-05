FROM debian:jessie

# Install utilities
RUN apt-get update && apt-get install --assume-yes \
    wget \
    git \
    make \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Install node
ENV NODE_VERSION=4.2.6
RUN git clone https://github.com/tj/n.git n \
  && cd n \
  && make install \
  && n $NODE_VERSION

# Install server
ENV SERVER_VERSION=0.1.3
RUN npm install -g @panosoft/js-xlsx-gen-server@$SERVER_VERSION

EXPOSE 8443

CMD ["js-xlsx-gen-server", "--key", "/credentials/server.key", "--cert", "/credentials/server.crt", "--port", "8443"]
