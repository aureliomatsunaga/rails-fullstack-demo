#!/bin/sh

set -e

rm -f tmp/pids/server.pid

foreman start -f Procfile.dev