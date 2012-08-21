#!/bin/bash
git submodule init
git submodule update

if [ ! -d e ]
    then
    test -d e || virtualenv e
    pushd rstblog/
    . ../e/bin/activate; python setup.py install
    popd
fi
