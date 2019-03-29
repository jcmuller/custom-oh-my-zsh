ze () {
  ARGS=$@;
  zeus "$@";
  ZE_EC=$?;
  stty sane;
  if [ $ZE_EC = 2 ]; then
    ze "$ARGS";
  fi
}
