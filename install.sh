#!/bin/bash

OS=`uname`

darwin_installation() {
  echo "Start installation for MacOS"

  insttalation
}

linux_installation() {
  echo "Start installation for Linux"

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
