path=(
  "$HOME/.nodenv/bin"
  "${path[@]}"
)

eval "$(nodenv init -)"

source ~/.nodenv/completions/nodenv.zsh
