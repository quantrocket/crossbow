#!/bin/sh

dir=`pwd`
NAME=`basename $dir | sed 's/_.*//'`
echo "Using NAME: ${NAME}" > name.txt

sh ebwt.sh 2>&1   | tee ${NAME}.ebwt.out
sh maq.sh 2>&1    | tee ${NAME}.maq.out
sh soap.sh 2>&1   | tee ${NAME}.soap.out
