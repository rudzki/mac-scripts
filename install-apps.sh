#!/usr/bin/env bash


xcode-select --install

echo "Installing homebrew"

if test ! $(which brew); then
 echo "Installing homebrew..."
 ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

# cli
binaries=(
 caskroom/cask/brew-cask
 curl
 git
 htop
 maven
 mongodb
 node
 openssl
 postgresql
 python
 sqlite
 the_platinum_searcher
 tomcat
 wget
 yarn
)

echo "Installing cli binaries..."
brew install $(binaries[@])
brew tap caskroom/versions

# Apps

apps=(
 1password
 alfred
 anaconda
 atom
 droplr
 eclipse-jee
 spotify
 slack
 dropbox
 google-chrome
 java
 postgres
 pycharm
 transmission
 virtualbox
 vagrant
 visual-studio-code
 vlc
)

echo "Installing apps..."
brew cask install ${apps[@]}

brew cleanup

# Folders
folders={
 archive
 code
 docs
 wpdev
}

echo "Creating folders..."
mkdir ~/${folders[@]}

echo "Done"
