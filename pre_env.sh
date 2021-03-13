#!/bin/bash
sudo apt-get update && sudo apt-get install software-properties-common
sudo add-apt-repository --yes ppa:longsleep/golang-backports
sudo apt-get update 2>&1 |
sed -ne 's?^.*NO_PUBKEY ??p' |
xargs -r -- sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys
sudo apt-get install golang-go
sdkmanager --install "ndk;$NDKVER"