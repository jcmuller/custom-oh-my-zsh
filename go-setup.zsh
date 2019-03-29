GOENV_ROOT="$HOME/.goenv"; export GOENV_ROOT
GOPATH=~/go; export GOPATH

[ -s "$GOENV_ROOT/completions/goenv.zsh" ] && . "$GOENV_ROOT/completions/goenv.zsh"
eval "$(goenv init -)"

GOROOT="$(goenv prefix)"; export GOROOT

PATH_COMPONENTS=(
"$GOENV_ROOT/bin"
"$GOENV_ROOT/shims"
"$GOPATH/bin"
"$GOROOT/bin"
)

PATH="${(j/:/)PATH_COMPONENTS}:${PATH}"
export PATH
