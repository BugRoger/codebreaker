!/bin/bash -e
rvm use "1.9.2@codebreaker"

bundle install --without=osx
cucumber -f junit -o test-reports