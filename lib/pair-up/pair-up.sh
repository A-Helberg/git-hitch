# Add the following to your ~/.bashrc or ~/.zshrc
#
# Alternatively, copy/symlink this file and source in your shell.  See `pair --setup-path`.

pair() {
  if gem list -i pair-up 2>/dev/null 1>/dev/null; then
    command pair "$@"
    if [[ -s "$HOME/.pair-up_export_authors" ]] ; then source "$HOME/.pair-up_export_authors" ; fi
  else
    echo "You do not have pair-up installed for your current ruby version."
    echo "Please run $> gem install pair-up"
  fi
}

# Uncomment to persist pair info between terminal instances
# pair
