#!/bin/bash

set -exo pipefail

python3 -m pip install --index-url 'https://:2024-12-22T07:47:28.074156Z@time-machines-pypi.sealsecurity.io/' --upgrade twine wheel build
python3 -m build
python3 -m twine upload dist/* -u $PYPI_USERNAME -p $PYPI_PASSWORD --skip-existing
