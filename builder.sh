#!/usr/bin/env bash

DOCKER_REGISTRY=nmelnick

for VERSION in `cat versions.txt`; do
  for ITER in "" "-slim" "-threaded" "-slim-threaded"; do
    echo "Building $VERSION$ITER"
    mkdir -p "$VERSION$ITER"
    cat Dockerfile.template | sed "s/%VERSION%/$VERSION$ITER/" > "$VERSION$ITER/Dockerfile"
    cd "$VERSION$ITER" && docker build -t $DOCKER_REGISTRY/perl-cpm:$VERSION$ITER .; cd ..
  done
done
