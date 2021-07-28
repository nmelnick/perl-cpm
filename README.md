perl-cpm
========

This repository is used to generate `perl-cpm` docker images. Using the base
images provided by Perl, `perl-cpm` provides a Docker base image with core perl
and the [App::cpm](https://metacpan.org/pod/App::cpm) fast CPAN module
installer.

Available build versions are listed in `versions.txt`, delimited with newlines.
The `builder.sh` script will iterate through the versions in that file and build
for VERSION, VERSION-slim, VERSION-slim-threaded, and VERSION-threaded. The
`pusher.sh` script will iterate through the versions in that file and push for
VERSION, VERSION-slim, VERSION-slim-threaded, and VERSION-threaded.

To build all available versions, run the `./builder.sh` script.

To push all available versions, run the `./pusher.sh` script.
