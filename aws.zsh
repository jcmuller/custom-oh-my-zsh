AWS_VAULT_BACKEND=secret-service; export AWS_VAULT_BACKEND
alias aws-vault-pass='aws-vault --backend=pass --pass-cmd=pass --pass-prefix=aws-vault'
alias aws-vault-secret-service='aws-vault --backend=secret-service'
