if [[ ! -o interactive ]]; then
    return
fi

eval "$(rbenv init -)"

compctl -K _rbenv rbenv

_rbenv() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(rbenv commands)"
  else
    completions="$(rbenv completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}

PATH_COMPONENTS=(
"$HOME/.rbenv/bin"
"$HOME/.rbenv/shims"
)

PATH="${(j/:/)PATH_COMPONENTS}:${PATH}"
export PATH
