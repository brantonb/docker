#!/bin/sh

# Initialize the wiki
if [ ! -d .git ]; then
    git init
fi

gollum --mathjax --config /opt/gollum/config.rb
