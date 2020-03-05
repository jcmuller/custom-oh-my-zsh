GOENV_ROOT="$HOME/.goenv"; export GOENV_ROOT
GOPATH=~/go; export GOPATH

eval "$($GOENV_ROOT/bin/goenv init -)"
[ -s "$GOENV_ROOT/completions/goenv.zsh" ] && . "$GOENV_ROOT/completions/goenv.zsh"

path=(
  "$GOENV_ROOT/bin"
  "$GOENV_ROOT/shims"
  "$GOPATH/bin"
  "${path[@]}"
)

GOROOT="$(goenv prefix)"; export GOROOT

for bin in $(find "$HOME/go" -maxdepth 2 -type d -name bin); do
path=(
  "$bin"
  "${path[@]}"
)
done

path=(
  "$GOPATH/$(goenv version-name)/bin"
  "${path[@]}"
)
