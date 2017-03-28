#!/usr/bin/env bash

bundle exec ruby examples/example.rb

for f in *.xlsx; do 
    xlsx-validator $f
done
