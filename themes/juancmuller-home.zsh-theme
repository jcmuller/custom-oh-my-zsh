# Modified clean theme

function versions() {
  mgr="$(version_manager_shell_string)"
  echo "$mgr"
}

function current_ruby() {
  echo "$(rbenv version-name)"
}

function npm_prompt_info() {
  echo "$(nvm version)"
}

function current_gemset() {
  echo "$(rbenv gemset active 2 &>/dev/null | sed -e ":a" -e '$ s/\n/+/gp' | head -n1)"
}

function rbenv_prompt_info() {
  if [[ -n $(current_gemset) ]]; then
    echo "$(current_ruby)@$(current_gemset)"
  else
    echo "$(current_ruby)"
  fi
}

function rbenv_last_exit_code() {
  local LAST_EXIT_CODE=$?

  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    local EXIT_CODE_PROMPT=' '
    EXIT_CODE_PROMPT+="%{$fg[red]%}-%{$reset_color%}"
    EXIT_CODE_PROMPT+="%{$fg_bold[red]%}$LAST_EXIT_CODE%{$reset_color%}"
    EXIT_CODE_PROMPT+="%{$fg[red]%}-%{$reset_color%}"
    echo "$EXIT_CODE_PROMPT"
  fi
}

function preexec() {
  timer=${timer:-$SECONDS}
}

function precmd() {
  if [[ $timer ]]; then
    timer_show=$(($SECONDS - $timer))
    TIMINGS="${timer_show}s"
    unset timer
  fi
}

function execution_time() {
  echo $TIMINGS
}

[[ $UID -eq 0 ]] && NCOLOR="red" || NCOLOR="white"

PROMPT='%{$fg[$NCOLOR]%}%B%n@%M%b%{$reset_color%}:%{$fg[blue]%}%B%5c%b%{$reset_color%} $(git_prompt_info_with_sha)$(rbenv_last_exit_code)%{$fg[blue]%}%B(%{$fg[yellow]%}%B$(versions)%{$fg[blue]%})%{$reset_color%} [%*][%j][$(execution_time)]
%(!.#.$) '

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[yellow]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗"

# LS colors, made with http://geoff.greer.fm/lscolors/
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:*.cmd=00;32:*.exe=01;32:*.com=01;32:*.bat=01;32:*.btm=01;32:*.dll=01;32:*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.zoo=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.tb2=00;31:*.tz2=00;31:*.tbz2=00;31:*.avi=01;35:*.bmp=01;35:*.fli=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mng=01;35:*.mov=01;35:*.mpg=01;35:*.pcx=01;35:*.pbm=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.xbm=01;35:*.xpm=01;35:*.dl=01;35:*.gl=01;35:*.wmv=01;35:*.aiff=00;32:*.au=00;32:*.mid=00;32:*.mp3=00;32:*.ogg=00;32:*.voc=00;32:*.wav=00;32:'