if command -v uv &> /dev/null; then
  eval "$(uv generate-shell-completion zsh)"
else
  echo "uxxv command not found, skipping uxxv autocompletion setup."
fi
