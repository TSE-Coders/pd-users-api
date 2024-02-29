#!/bin/bash

VERSION=$(cat version)

/home/ubuntu/.rbenv/bin/rbenv install $VERSION
/home/ubuntu/.rbenv/bin/rbenv local $VERSION

/home/ubuntu/.rbenv/shims/bundler install
/home/ubuntu/.rbenv/shims/rails db:migrate
/home/ubuntu/.rbenv/shims/rails db:seed
/home/ubuntu/.rbenv/shims/rails s
