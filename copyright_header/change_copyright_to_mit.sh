#!/bin/bash
# Change license header to MIT
LIC=$(<sfs-copyright-mit.txt)
export LIC
perl -i -pe 'BEGIN{undef $/;} s/% Copyright.*gmail.com \*/$ENV{LIC}/smg' "$1"
