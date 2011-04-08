#!/bin/bash -e
[[ -s ".rvmrc" ]] && source .rvmrc
$*

#bundle install --without=osx
#cucumber -f junit -o test-reports