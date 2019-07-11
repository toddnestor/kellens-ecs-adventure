#!/bin/bash

# Exit on fail
set -e

bundle exec rackup --host 0.0.0.0 -p 4000
