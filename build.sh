#!/bin/bash -e
source "$HOME/.rvm/scripts/rvm"

rvm use "1.9.2@codebreaker"
who am i

bundle install
cucumber
