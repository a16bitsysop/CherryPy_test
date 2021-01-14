#!/bin/sh
pkgver=18.6.0
source="https://files.pythonhosted.org/packages/source/C/CherryPy/CherryPy-$pkgver.tar.gz"
builddir="CherryPy-$pkgver"

apk add --no-cache py3-pip py3-psutil py3-setuptools py3-wheel

python3 -m pip install cheroot jaraco-collections portend zc-lockfile path pytest==5.3.5  pytest-cov pytest-services requests-toolbelt tz

wget "$source"
tar -xvzf "CherryPy-$pkgver.tar.gz"
cd "$builddir"

python3 setup.py build

pytest --capture=no --tb=no -rA
