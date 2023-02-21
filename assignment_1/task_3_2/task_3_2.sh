#!/bin/bash

#git clone git@github.com:NMBURobotics/bash_basic_examples.git

cd bash_basic_examples/scripts
for f in *.sh; do
  bash "$f"
done
