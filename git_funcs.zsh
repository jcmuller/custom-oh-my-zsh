git_prompt_info_with_sha () {
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]
  then
    sha=$(command git rev-parse --short HEAD 2>/dev/null) || return 0
    ref=$(command git symbolic-ref HEAD 2> /dev/null)  || ref=$(command git rev-parse --short HEAD 2> /dev/null)  || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/} $sha$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}
