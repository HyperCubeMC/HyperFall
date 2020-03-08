#!/usr/bin/env bash

echo Merging upstream...
./hyperfall m
echo Merged upstream!
read -rsp $'Press enter to continue...\n'
echo Applying all the patches to Waterfall...
./hyperfall p
echo Applied all the patches to Waterfall!
echo Check to see if there is any conflicts and fix them if there are by fixing it in HyperFall-Proxy and running git am --continue.
read -rsp $'Press enter to continue...\n'
echo Rebuilding the patches...
./hyperfall rb
echo Rebuilt the patches!
read -rsp $'Press enter to continue...\n'
