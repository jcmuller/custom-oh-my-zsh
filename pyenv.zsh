PYENV_ROOT="$HOME/.pyenv"; export PYENV_ROOT

path=(
  "$PYENV_ROOT/bin"
  "${path[@]}"
)

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
