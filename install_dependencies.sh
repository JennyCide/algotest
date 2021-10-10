#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install build-essential python-virtualenv python-pip python-dev python-setuptools libssl-dev libffi-dev -y

git config --global user.email "4n3ver@reborn.com"
git config --global user.name "Yoel Ivan"
git config --global core.editor nano
git config --global http.sslverify false
git config --global core.ignorecase false
git config --global core.autocrlf input
git config credential.helper store

python -m virtualenv env && source env/bin/activate && python -m pip install -U pip && python -m pip install -r requirements.txt

./algo


