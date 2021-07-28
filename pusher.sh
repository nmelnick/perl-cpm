#!/usr/bin/env bash

DOCKER_REGISTRY=nmelnick

for VERSION in `cat versions.txt`; do
  for ITER in "" "-slim" "-threaded" "-slim-threaded"; do
    echo "Pushing $VERSION$ITER"
    docker push $DOCKER_REGISTRY/perl-cpm:$VERSION$ITER
  done
done
