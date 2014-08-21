# gressgraph installer

This docker image can be used to install `gressgraph`
(http://jekor.com/gressgraph/) on an Ubuntu 14.04 system.

## How do I install `gressgraph` with this?
If you want to install `gressgraph` into `/usr/local/bin`, just do this:

    docker run --rm -v /usr/local/bin:/target synctree/gressgraph-installer:latest

The `synctree/gressgraph-installer` container will detect that `/target` is a
mountpoint, and it will copy the `gressgraph` binary into it.

If you don't trust me, and prefer to extract the `gressgraph` binary, rather
than allowing my container to potentially wreak havoc into your system's
`$PATH`, you can also do this:

    docker run --rm synctree/gressgraph-installer cat /tmp/gressgraph/gressgraph > /tmp/gressgraph

Then do whatever you want with the binary in `/tmp/gressgraph`.

## Credit

 * @jpetazzo for the idea (and docs, ahem) from `jpetazzo/nsenter`
