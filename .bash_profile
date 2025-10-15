# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
