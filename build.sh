!/bin/bash -e
[[ -s ".rvmrc" ]] && source .rvmrc
exec $*

#bundle install --without=osx
#cucumber -f junit -o test-reports