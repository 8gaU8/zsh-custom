# # check this repository if it's the latest version
cd "$ZSH_CUSTOM"
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  # Not a git repository, nothing to do.
  exit
fi

# # Fetch remote updates quietly
git fetch --quiet

# Check if the local branch is behind the remote
if git status -uno | grep -q 'Your branch is behind'; then
  echo "\033[0;33m[oh-my-zsh custom] Your custom scripts are not up to date.\033[0m"
fi

# Return to the original directory
cd - >/dev/null 2>&1
