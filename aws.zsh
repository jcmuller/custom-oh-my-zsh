AWS_VAULT_BACKEND=pass; export AWS_VAULT_BACKEND
AWS_VAULT_PASS_PREFIX=aws-vault; export AWS_VAULT_PASS_PREFIX
AWS_VAULT_PASS_CMD=pass; export AWS_VAULT_CMD
alias aws-vault-pass='aws-vault --backend=pass --pass-cmd=pass --pass-prefix=aws-vault'
