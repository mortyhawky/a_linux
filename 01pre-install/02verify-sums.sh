#!/usr/bin/env bash
set -e

b2sum     --check --ignore-missing b2sums.txt
sha256sum --check --ignore-missing sha256sums.txt

printf "SUCCESS!\n\n"
