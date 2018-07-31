alias GET="lwp-request -m get"
alias HEAD="lwp-request -m head"
alias POST="lwp-request -m post"

alias b="nocorrect bundle"
alias be="b exec"
alias bec="be cucumber"
alias ber="be rspec"
alias bes="be spork"
alias besc="bes cucumber"
alias besr="bes rspec"
alias bi="b install"
alias biall='for i in /web/*; do (echo "$i:"; cd $i && (b check || b)); done'
alias bu="b update"
alias bum="bu models"
alias bumall='for i in /web/*; do (echo "$i:"; cd $i && bum); done'

alias gitl='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%an, %cr)%Creset'\'' --abbrev-commit --date=relative'
alias gitls='gitl --max-count=5'
alias gpr="git pull --rebase"
alias gprnf="gpr --no-ff"
alias grm="git ls-files --deleted | xargs git rm"
alias gs='git status'
alias gst='gs'
alias push='git push'
alias gcv='git commit -v'
alias gca='gcv -a'
alias gco='git checkout'
alias gcm='gco master'

alias spork="nocorrect spork"
alias rspec="nocorrect rspec"

alias rc="rails c"

alias zeus="nocorrect zeus"
alias z="zeus"
alias zs="z server"
alias zc="z console"
alias zr="z rake"
alias zs="z rspec"

alias codeclimate="docker run --interactive --tty --rm --env CODE_PATH="$PWD" --volume "$PWD":/code --volume /var/run/docker.sock:/var/run/docker.sock --volume /tmp/cc:/tmp/cc codeclimate/codeclimate"
alias autometrics='docker run -it --rm --network=host registry.int.greenhouse.io/autometrics-cli'
alias solano='docker run -it --rm -v $PWD:/src registry.int.greenhouse.io/solano-cli'
alias dockviz='docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz'
alias docker_tree='dockviz images --tree'

unalias grb

dajoku_login() {
  local dajokus user space region

  dajokus=(dev.use1 prod.use1 prod.usw2)
  user=juan@greenhouse.io

  for dj in $dajokus; do
    read -r space region <<<$(echo "$dj" | sed 's/\./ /')

    /home/jcmuller/bin/dajoku auth login -s "$space" -r "$region" "$user"
  done
}
