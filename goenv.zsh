GOENV_ROOT="$HOME/.goenv"; export GOENV_ROOT
GOPATH=~/go; export GOPATH

eval "$($GOENV_ROOT/bin/goenv init -)"
[ -s "$GOENV_ROOT/completions/goenv.zsh" ] && . "$GOENV_ROOT/completions/goenv.zsh"

PATH_COMPONENTS=(
"$GOENV_ROOT/bin"
"$GOENV_ROOT/shims"
"$GOPATH/bin"
)

PATH="${(j/:/)PATH_COMPONENTS}:${PATH}"
export PATH

GOROOT="$(goenv prefix)"; export GOROOT

PATH_COMPONENTS=(
"$GOROOT/bin"
"$GOPATH/$(goenv version-name)/bin"
)

PATH="${(j/:/)PATH_COMPONENTS}:${PATH}"
export PATH
