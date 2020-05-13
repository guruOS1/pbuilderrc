#!/bin/bash

set -e
pbuilderrc=${1:-$(dirname $0)/'pbuilderrc.astra16'}

sudo pbuilder create --configfile $pbuilderrc