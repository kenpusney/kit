#!/usr/bin/env bash

[ -d /usr/lib/kit ] || mkdir /usr/lib/kit

cp konfig /usr/lib/kit

if [ -e /usr/bin/konfig ]
then
    rm -rf /usr/bin/konfig
fi
ln -s /usr/lib/kit/konfig /usr/bin/konfig


