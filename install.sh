#!/bin/bash

OS=`uname`

darwin_installation() {
  install_brew() {
    which -s brew
    if [[ $? != 0 ]]; then
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
      brew update
    fi
  }

  #install_brew_libraries() {
  #}

  #install_vim() {
  #}

  echo 'Start installation for MacOS'
  install_brew
}

linux_installation() {
  update_apt() {
    sudo apt-get upate
  }

  #install_apt_libraries() {
  #}

  #install_vim() {
  #}

  echo 'Start installation for Linux'
}

if [[ "$OS" == 'Darwin' ]]; then
  darwin_installation
elif [[ "$OS" == 'Linux' ]]; then
  linux_installation
else
  echo 'Installation for your OS is not implemented!'
fi
