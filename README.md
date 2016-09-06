dotfiles
========

These are dotfiles for MSK cluster users, bootstrappable across machines using [homeshick](https://github.com/andsens/homeshick).

Quick Start
-----------

To install homeshick into a fresh *nix home directory:

    git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

Clone and symlink the dotfiles from this repo. `homeshick` will prompt you to replace existing dotfiles like `.profile` and `.bashrc`, so make sure you backup your files as needed, before you proceed:

    $HOME/.homesick/repos/homeshick/bin/homeshick clone -f mskcc/dotfiles
    source $HOME/.profile

Personalize
-----------

Type `homeshick cd dotfiles` to locate the local git repo containing these new dotfiles, and personalize them to your heart's content. At the very least, you **must** update `home/.gitconfig` with your `name` and `email`.
