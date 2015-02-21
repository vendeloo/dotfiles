#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.
[[ "$(uname -s)" != "Darwin" ]] && exit 0

# Check for Homebrew
if test ! "$(which brew)"; then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

brew update

# more formualae
brew tap phinze/homebrew-cask
brew tap caskroom/versions
brew install brew-cask

# usefull stuff
brew install grc coreutils the_silver_searcher htop-osx heroku-toolbelt \
  imagemagick wget unrar ffmpeg gifsicle
brew cask install iterm2 the-unarchiver disk-inventory-x appcleaner diffmerge

# virtualization
brew cask install virtualbox vagrant

# chat, books, notes, documents, mail, etc
brew cask install slack

# vpn stuff
brew cask install tunnelblick

#docker
brew install boot2docker
boot2docker init
boot2docker up
brew install  docker

# clean things up
brew cleanup
brew cask cleanup