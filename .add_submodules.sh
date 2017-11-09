#!/bin/bash

for REPO in $(bash ./.get_submodules.sh)
do
	git submodule add $REPO $(echo $REPO|cut -d "/" -f5)
done
