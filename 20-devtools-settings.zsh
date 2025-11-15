# update path
export PATH="${HOME}/.local/bin:$PATH"


# ghcup
source ${HOME}/.ghcup/env

# Added by LM Studio CLI (lms)
export PATH="$PATH:${HOME}/.lmstudio/bin"
# End of LM Studio CLI section

eval "$(${HOME}/.local/bin/mise activate zsh)"
