autoload -Uz compinit
compinit
_comp_options+=(globdots)

export LANG=en_US.UTF-8

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export PATH="/opt/homebrew/bin:$PATH";

export PATH="$HOME/.cargo/bin:$PATH"

. $(brew --prefix asdf)/libexec/asdf.sh

eval "$(starship init zsh)"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi