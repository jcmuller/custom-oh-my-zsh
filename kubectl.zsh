alias k=kubectl
alias m=minikube
alias a="argo -n argo"
alias an="argo -n argo-next"

kdebug () {
    kubectl run \
      --generator=run-pod/v1 \
      -it \
      --rm \
      --labels "consumer=juan,kdebug=true" \
      --image gcr.io/gh-infra/debug-tools \
      "debug-juan" \
      "$@"
}
