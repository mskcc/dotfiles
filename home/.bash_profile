# ~/.bash_profile should simply load .profile and .bashrc, in that order

# If found, load .profile, which in turn loads .bashrc
if [ -f "$HOME/.profile" ]; then
    . "$HOME/.profile"
fi
