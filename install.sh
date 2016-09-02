#!/bin/bash

OS=`uname`

darwin_installation() {
  echo 'Start installation for MacOS'
}

linux_installation() {
  echo 'Start installation for Linux'
}

if [[ "$OS" == 'Darwin' ]]; then
  darwin_installation
elif [[ "$OS" == 'Linux' ]]; then
  linux_installation
else
  echo 'Installation for your OS is not implemented!'
fi
