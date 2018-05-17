#! /bin/bash

set -e
IFS=$' \t\n' # workaround for conda 4.2.13+toolchain bug

export CFLAGS="-I$PREFIX/include"

exec python -m pip install --no-deps --ignore-installed .
