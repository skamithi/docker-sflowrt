#!/bin/bash

set -m

# Start sflow-rt in the foreground
START=/usr/local/sflow-rt/bin/run-rt
/bin/su - sflowrt -s /bin/sh -c "$START < /dev/null > /dev/null 2>&1 "

