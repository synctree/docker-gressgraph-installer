from debian:jessie
maintainer Mike Dillon <mike.dillon@synctree.com>

run apt-get update -q
run DEBIAN_FRONTEND=noninteractive \
    apt-get install --no-install-recommends -qy \
      git \
      ca-certificates \
      build-essential \
      ghc \
      cabal-install \
      ;

run cabal update
run cabal install --verbose=0 parsec

run git clone https://github.com/jekor/gressgraph.git /src
workdir /src

run make
add installer /installer

cmd /installer
