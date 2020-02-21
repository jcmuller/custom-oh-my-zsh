alias k=kubectl
alias m=minikube
alias tf=terraform
alias a="argo -n argo"
alias alr="a list --running"
alias alrnh="alr --no-headers"
alias alrnhno="alrnh -o name"
alias at='a terminate $(alrnhno | fzf)'
alias al='a logs -fw `alrnhno | fzf`'

kdebug () {
    kubectl run -it --rm --labels "consumer=juan,kdebug=true" --image gcr.io/gh-infra/debug-tools "debug-juan" "$@"
}
