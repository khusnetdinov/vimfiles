#!/bin/bash

OS=`uname`

darwin_installation() {

  echo ""
  echo "Start installation for MacOS"
  echo ""

  installation
}

linux_installation() {
  echo ""
  echo "Start installation for Linux"
  echo ""
}

installation() {

  echo ""
  echo "Start installation"
  echo ""

}

if [[ "$OS" == "Darwin" ]]; then
  darwin_installation
elif [[ "$OS" == "Linux" ]]; then
  linux_installation
else
  echo "Installation for your OS is not implemented!"
fi
