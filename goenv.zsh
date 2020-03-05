GOPATH=~/go; export GOPATH

path=(
  "$GOPATH/bin"
  "${path[@]}"
)

GOROOT="~/go"; export GOROOT

for bin in $(find "$HOME/go" -maxdepth 2 -type d -name bin); do
path=(
  "$bin"
  "${path[@]}"
)
done
