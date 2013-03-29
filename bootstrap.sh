#!/bin/bash

pushd .

cd `dirname $0`


cp configure configure.back

autoreconf -iv -Wall
autoreconf -fv -Wall

popd

$0 $@

cd `dirname $0`

cp configure.back configure
rm configure.back


