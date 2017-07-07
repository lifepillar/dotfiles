#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function diffAll() {
  for i in dot-* ; do /usr/bin/diff -r "$HOME/.${i/dot-/}" "$i" ; done
}

function doIt() {
  for i in dot-* ; do
    if [ -d "$i" ]; then
      cp -R "$i/" "$HOME/.${i/dot-/}"
    else
      cp "$i" "$HOME/.${i/dot-/}"
    fi
  done
  source $HOME/.bash_profile;
}

if [ "$1" == "--diff" -o "$1" == "-d" ]; then
  diffAll;
elif [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset diffAll;
unset doIt;

