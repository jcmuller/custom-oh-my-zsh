AWS_VAULT_BACKEND=pass; export AWS_VAULT_BACKEND
AWS_VAULT_PASS_PREFIX=aws-vault; export AWS_VAULT_PASS_PREFIX
AWS_VAULT_PASS_CMD=pass; export AWS_VAULT_CMD
AWS_SDK_LOAD_CONFIG=true; export AWS_SDK_LOAD_CONFIG

aws-vault-use() {
  local role ttl

  role="${1:-support}"
  duration="${2:-1h}"

  unset AWS_VAULT

  eval $(aws-vault exec \
    "--mfa-token=$(gopass otp -o amazon.com/aws/juan@greenhouse.io)" \
    "--duration=$duration" \
    "$role" -- env |
    awk '/^AWS/ { print "export " $1 }')
}

alias av=aws-vault
alias aws-vault-pass='av --backend=pass --pass-cmd=pass --pass-prefix=aws-vault'
alias avu=aws-vault-use
alias avus="avu support"
