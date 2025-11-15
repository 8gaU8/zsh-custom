source "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/10-utils.zsh"

# update path
# export PATH="${HOME}/.local/bin:$PATH"
add_to_path_if_exists "${HOME}/.local/bin"


# ghcup
source_if_exists ${HOME}/.ghcup/env

# Added by LM Studio CLI (lms)
add_to_path_if_exists "${HOME}/.lmstudio/bin"
# End of LM Studio CLI section


eval "$(${HOME}/.local/bin/mise activate zsh)"
