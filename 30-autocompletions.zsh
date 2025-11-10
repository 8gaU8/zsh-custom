if command -v uv &> /dev/null; then
  eval "$(uv generate-shell-completion zsh)"
else
  echo "uv command not found, skipping uv autocompletion setup."
fi
