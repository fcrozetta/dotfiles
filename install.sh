#!/bin/bash
if [[ $(uname) == "Darwin" ]]; then
    echo "It's a me, mac"

    # Install homebrew if not installed
    zsh homebrew.sh

fi
