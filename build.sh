#!/bin/bash -e
#source "$HOME/.rvm/scripts/rvm"
#rvm use "1.9.2@codebreaker"

/opt/ruby/bin/bundle install --without=osx
/opt/ruby/bin/ruby /opt/ruby/bin/bundle exec cucumber -f junit -o test-reports
