#!/bin/bash -e
#source "$HOME/.rvm/scripts/rvm"
#rvm use "1.9.2@codebreaker"

/opt/ruby/bin/bundle install --without osx
cucumber -f junit -o test-reports
