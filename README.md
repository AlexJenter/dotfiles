# dotfiles

## setup symlinks

```sh
stow --restow */
```

## Homebrew

Handle brew dependencies, found in this [post](https://apple.stackexchange.com/questions/101090/list-of-all-packages-installed-using-homebrew/256269#256269)
```sh
$ cd ~/dotfiles/macos-brew/
# creates Brewfile in the current directory from currently-installed packages
$ brew bundle dump
# edit Brewfile
# install everything from the Brewfile
$ brew bundle
```

## Setup per OS
```sh
stow --restow linux
# or
stow --restow macos
```