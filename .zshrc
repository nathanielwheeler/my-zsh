# Prompt
PROMPT="        %F{red}[%F{yellow}%D %*%F{red}] %F{cyan}%~
 ⁉️  %f"

# Git Commands
function gc() {
        git add .
        git commit -m "$*"
        git push
}

# Go Programming
export GOPATH="${HOME}/src/go"
export GOROOT="$(brew --prefix golang)/libexec"
export GOBIN="${GOPATH}/bin"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/bin" || mkdir -p "${GOPATH}/bin"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
test -d "${GOPATH}/src/github.com/nathanielwheeler" || mkdir -p "${GOPATH}/src/github.com/nathanielwheeler"

alias goland='/usr/local/bin/goland'
alias gosrc='cd ${HOME}/src/go/src/github.com/nathanielwheeler'

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
