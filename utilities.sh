#!/bin/bash
set -e
source /bd_build/buildconfig
set -x

## Often used tools.
$minimal_apt_get_install curl less vim-tiny psmisc rsync
ln -s /usr/bin/vim.tiny /usr/bin/vim
