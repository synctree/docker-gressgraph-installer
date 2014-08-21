from ubuntu:trusty
maintainer Mike Dillon <mike.dillon@synctree.com>

run apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install --no-install-recommends -y \
      git \
      ca-certificates \
      build-essential \
      ghc \
      cabal-install \
      ;

run cabal update && cabal install parsec

run cd /tmp && git clone https://github.com/jekor/gressgraph.git
run mkdir /target

volume /target
cmd ["cp", "/tmp/gressgraph", "/target"]
