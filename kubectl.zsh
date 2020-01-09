alias k=kubectl
alias m=minikube

kdebug () {
    kubectl run -it --rm --labels "consumer=juan,kdebug=true" --image gcr.io/gh-infra/debug-tools "debug-juan" "$@"
}
