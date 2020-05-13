#!/bin/bash

set -xe
basetgz=${1:-'/var/cache/pbuilder/base.astra16.tgz'}


sudo pbuilder login --basetgz $basetgz