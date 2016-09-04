#!/bin/bash

OS=`uname`

darwin_installation() {
  echo "Start installation for MacOS"
  insttalation
}

linux_installation() {

  updates_system() {
    sudo apt-get update
  }

  install_packages() {
    sudo apt-get install curl
    sudo apt-get install build-essential libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip
    sudo apt-get install git-core git-flow
  }

  echo "Start installation for Linux"
  updates_system
  installation
}

instalation() {
  echo "Start installation"
}

if [[ "$OS" == "Darwin" ]]; then
  darwin_installation
elif [[ "$OS" == "Linux" ]]; then
  linux_installation
else
  echo "Installation for your OS is not implemented!"
fi
