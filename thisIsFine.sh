#!/bin/bash
baseDir="/opt/this-is-fine"
asciiFile="${baseDir}/thisIsFine.txt"
for ((i=1 ; i<=$(wc -l ${asciiFile}|awk '{print $1}'); i++)); do
  >&2 sed -n ${i}p ${asciiFile}
  sleep .1
done
