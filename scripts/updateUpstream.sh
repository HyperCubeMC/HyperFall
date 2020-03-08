#!/usr/bin/env bash

printf "\033[1;31mMerging upstream...\033[0m\n"
./hyperfall m
printf "\033[1;31mMerged upstream\033[0m\n"
read -rsp $'Press enter to continue or Ctrl+C to exit...\n'
printf "\033[1;31mApplying all the patches to Waterfall...\033[0m\n"
./hyperfall p
printf "\033[1;31mApplied all the patches to Waterfall\033[0m\n"
printf "\033[1;31mCheck to see if there is any conflicts and fix them if there are any with the steps below:\033[0m\n"
printf "\033[1;31m1) Ctrl+C to exit so you can run commands\033[0m\n"
printf "\033[1;31m2) Fix the merge conflict in HyperFall-Proxy\033[0m\n"
printf "\033[1;31m3) cd HyperFall-Proxy\033[0m\n"
printf "\033[1;31m4) git am --continue\033[0m\n"
printf "\033[1;31m5) cd ..\033[0m\n"
printf "\033[1;31m6) ./hyperfall rb\033[0m\n"
read -rsp $'Press enter to continue or Ctrl+C to exit...\n'
printf "\033[1;31mRebuilding the patches...\033[0m\n"
./hyperfall rb
printf "\033[1;31mRebuilt the patches\033[0m\n"
read -rsp $'Press enter to continue or Ctrl+C to exit...\n'
