# Prompt
PROMPT="%F{red}[%f%F{yellow}%D%*%f%F{red}]%f%F{magenta}%n%f%F{red}:%f%F{cyan}%~%f%F{red} ⁉️ %f"

# My Aliases
alias gosrc='cd ${HOME}/src/go/src/github.com/nathanielwheeler'

# Go Programming
export GOPATH="${HOME}/src/go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
test -d "${GOPATH}/src/github.com/nathanielwheeler" || mkdir -p "${GOPATH}/src/github.com/nathanielwheeler"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
