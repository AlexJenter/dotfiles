#!/usr/bin/env bash

MACOS_SSH_SIGN="/Applications/1Password.app/Contents/MacOS/op-ssh-sign"
LINUX_SSH_SIGN="/opt/1Password/op-ssh-sign"

if [ -f "$MACOS_SSH_SIGN" ]; then
  "$MACOS_SSH_SIGN" "$@"
elif [ -f "$LINUX_SSH_SIGN" ]; then
  "$LINUX_SSH_SIGN" "$@"
else
    ssh-keygen "$@"
fi
