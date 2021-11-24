# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

export PATH="$HOME/.cargo/bin:$PATH"

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

export PATH="$HOME/flutter/bin:$PATH"

export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

eval "$(rbenv init -)"