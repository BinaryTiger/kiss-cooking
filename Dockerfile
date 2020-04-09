FROM andrius/alpine-ruby:tiny
RUN apk --no-cache add curl tar bash

# Install dhall dependencies
RUN curl -OL https://github.com/dhall-lang/dhall-haskell/releases/download/1.31.1/dhall-1.31.1-x86_64-linux.tar.bz2 && \
  tar xf dhall-1.31.1-x86_64-linux.tar.bz2 && \
  mv ./bin/dhall /usr/bin
RUN curl -OL https://github.com/dhall-lang/dhall-haskell/releases/download/1.31.1/dhall-yaml-1.0.3-x86_64-linux.tar.bz2 && \
  tar xf dhall-yaml-1.0.3-x86_64-linux.tar.bz2 && \
  mv ./bin/dhall-to-yaml-ng /usr/bin

# Install mustache executable
RUN gem install mustache