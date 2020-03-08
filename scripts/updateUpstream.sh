#!/usr/bin/env bash

echo Merging upstream...
./hyperfall m
echo Merged upstream!
read -rsp $'Press enter to continue or Ctrl+C to exit...\n'
echo Applying all the patches to Waterfall...
./hyperfall p
echo Applied all the patches to Waterfall!
echo Check to see if there is any conflicts and fix them if there are any with the steps below:
echo 1) Ctrl+C to exit
echo 2) Fix the merge conflict in HyperFall-Proxy
echo 3) cd HyperFall-Proxy
echo 4) git am --continue
echo 5) cd ..
echo 6) ./hyperfall rb
read -rsp $'Press enter to continue or Ctrl+C to exit...\n'
echo Rebuilding the patches...
./hyperfall rb
echo Rebuilt the patches!
read -rsp $'Press enter to continue or Ctrl+C to exit...\n'
