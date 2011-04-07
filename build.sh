#!/bin/bash -e
#source "$HOME/.rvm/scripts/rvm"
#rvm use "1.9.2@codebreaker"

/opt/ruby/bin/bundle install --without=osx --binstubs
/opt/ruby/bin/ruby bin/cucumber -f junit -o test-reports
