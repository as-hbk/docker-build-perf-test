#!/bin/bash
mkdir ~/test_dir

time for i in {1..100000}
do
    dd if=/dev/urandom of=~/test_dir/file_$i.txt bs=1024 count=50
done
