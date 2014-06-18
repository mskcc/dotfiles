dotfiles
========

These are my bash dotfiles, bootstrapped across machines using [homeshick](https://github.com/andsens/homeshick).

Quick Start
-----------

To install Homeshick into a fresh home directory:

    git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

Use Homeshick to clone and symlink my dotfiles from this repo:

    $HOME/.homesick/repos/homeshick/bin/homeshick clone ckandoth/dotfiles

This should prompt to replace all existing dotfiles including `.bashrc` which is already set to source homeshick. But rather than restarting terminaly, simply get the homeshick alias running like so:

    source $HOME/.bashrc
