#!/bin/bash

set -e

curdir=$(dirname $0)
[ "${curdir}" != "." ] && PWD=${curdir}

pushd $PWD

sudo mkdir -p /home/pbuilder
sudo mkdir -p /var/cache/pbuilder/tmprepo
sudo mkdir -p /etc/pbuilder/hooks
sudo ln -sf  ${PWD}/pbuilderrc /etc/pbuilderrc
sudo ln -sf  ${PWD}/hooks/default /etc/pbuilder/hooks

popd

[ -e /usr/share/debootstrap/scripts/stretch ] || sudo ln -sf /usr/share/debootstrap/scripts/sid  /usr/share/debootstrap/scripts/stretch
[ -e /usr/share/debootstrap/scripts/smolensk ] || sudo ln -sf /usr/share/debootstrap/scripts/wheezy /usr/share/debootstrap/scripts/smolensk
