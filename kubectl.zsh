alias k=kubectl
source <(kubectl completion zsh)

kdebug () {
    kubectl run -it --rm --labels "consumer=juan,kdebug=true" --image gcr.io/gh-infra/debug-tools "debug-juan" "$@"
}
