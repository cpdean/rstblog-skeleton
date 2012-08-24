#!/bin/bash
git submodule init
git submodule update

if [ ! -d _e ]
    then
    virtualenv _e
    pushd rstblog/
    . ../_e/bin/activate; pip install pygments
    . ../_e/bin/activate; python setup.py install
    popd
fi
