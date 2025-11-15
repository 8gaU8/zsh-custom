source "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/10-utils.zsh"

#* === update path ===

## Add common user bin directories
add_to_path_if_exists "${HOME}/.local/bin"
## LM Studio
add_to_path_if_exists "${HOME}/.lmstudio/bin"



#* === Environment Variables ===
# pip: Avoid pip installation without venv
export PIP_REQUIRE_VIRTUALENV=1

# man: use bat as manpager
export MANPAGER="sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat -p -lman'"



#* === Activations ===
## Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
## Mise
eval "$(${HOME}/.local/bin/mise activate zsh)"
## ghcup
source_if_exists ${HOME}/.ghcup/env

#* === Completions ===

## uv
if command -v uv &> /dev/null; then
  eval "$(uv generate-shell-completion zsh)"
else
  echo "uv command not found, skipping uv autocompletion setup."
fi
