# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
umask 002

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# Set PATH to include MSKCC's private bin if found
if [ -d "/opt/common/CentOS_6-dev/bin/current" ]; then
    PATH="/opt/common/CentOS_6-dev/bin/current:$PATH"
fi

# Add local Perl libraries to $PERL5LIB if found
if [ -d "$HOME/perl5" ]; then
    export PERL5LIB="$HOME/perl5/lib/perl5:$HOME/perl5/lib/perl5/site_perl"
fi

# Set up Perlbrew if found in the expected folder
if [ -d "$HOME/perl5/perlbrew" ]; then
    source $HOME/perl5/perlbrew/etc/bashrc
fi

# Set up Pyenv if found in the expected folder
if [ -d "$HOME/.pyenv" ]; then
    export PYENV_ROOT=$HOME/.pyenv
    export PATH=$PYENV_ROOT/bin:$PATH
    eval "$(pyenv init -)"
fi
