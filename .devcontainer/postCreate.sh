#!/bin/bash
set -o nounset
set -o errexit
set -o xtrace

cp -fv .devcontainer/.bashrc /root/

yarn global add typescript
yarn global add @types/node
yarn global add ts-node
yarn global add tsdx
yarn global add oclif
yarn global add gulp
