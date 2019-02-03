#!/bin/bash
DXVK_VERSION=$1 #Put the desired version instead $1 - for example v0.95

git clone https://github.com/doitsujin/dxvk
cd dxvk
git checkout "$DXVK_VERSION"
git apply ../pipeline.patch
./package-release.sh "$DXVK_VERSION" ../ --no-package

exec "$@"
