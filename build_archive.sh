#!/bin/bash

rm -rf out/
mkdir out

for i in source/*
    do
    echo $(basename $i)
    cd source
    zip -r ../out/$(basename $i).zip $(basename $i) --exclude=*.DS_Store* --exclude=*__MACOSX*
    cd ../
done


