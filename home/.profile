# ~/.profile is executed by the command interpreter (e.g. bash) for login shells. It has the stuff
# *not* specifically related to bash, such as environment variables (e.g. PATH, PERL5LIB, etc.)

# Set umask so that your group members can help you with your work
umask 002

# If running bash, load .bashrc
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# Set PATH to include user's private bins if they exist
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ]; then
    PATH=:"$HOME/.local/bin:$PATH"
fi

# Set up Pyenv if found in the expected folder
if [ -d "$HOME/.pyenv" ]; then
    export PYENV_ROOT=$HOME/.pyenv
    export PATH=$PYENV_ROOT/bin:$PATH
    eval "$(pyenv init -)"
fi

# Set up Perlbrew if found in the expected folder
if [ -d "$HOME/perl5/perlbrew" ]; then
    source $HOME/perl5/perlbrew/etc/bashrc
fi

# Add local Perl libraries to $PERL5LIB if found
if [ -d "$HOME/perl5" ]; then
    export PERL5LIB="$HOME/perl5/lib/perl5:$HOME/perl5/lib/perl5/site_perl"
fi

# Set PATH to include MSKCC's private bin if found
if [ -d "/opt/common/CentOS_6-dev/bin/current" ]; then
    PATH="/opt/common/CentOS_6-dev/bin/current:$PATH"
fi

# Set PATH to include MSKCC's python bin if found
if [ -d "/opt/common/CentOS_6-dev/python/python-2.7.10/bin" ]; then
    PATH="/opt/common/CentOS_6-dev/python/python-2.7.10/bin:$PATH"
fi
