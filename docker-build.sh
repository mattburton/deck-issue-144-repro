#!/bin/bash

pushd plugins/array-config
luarocks remove kong-plugin-array-config --force
luarocks make
luarocks pack kong-plugin-array-config
popd

rm -rf ./plugins/rocksdir
mkdir ./plugins/rocksdir
mv ./plugins/array-config/*.rock ./plugins/rocksdir/
#build the custom image
docker build \
   --build-arg ROCKS_DIR="./plugins/rocksdir" \
   --tag "deck_issue_144_repro" .
