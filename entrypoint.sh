#!/bin/bash
DXVK_VERSION=$1

git clone https://github.com/doitsujin/dxvk
cd dxvk
git checkout "$DXVK_VERSION"
git apply /root/pipeline.patch
./package-release.sh "$DXVK_VERSION" /output --no-package

exec "$@"
