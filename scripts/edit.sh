#!/usr/bin/env bash

pushd HyperFall-Proxy
git rebase --interactive upstream/upstream
popd
