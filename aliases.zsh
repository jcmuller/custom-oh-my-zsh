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
alias autometrics='docker run -it --rm --network=host gcr.io/gh-infra/autometrics-cli'
alias solano='docker run -it --rm -v $PWD:/src gcr.io/gh-infra/solano-cli:latest'
alias dockviz='docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz'
dajoku_dev='BUNDLE_GEMFILE=/home/jcmuller/Development/Greenhouse/dajoku_cli/Gemfile bundle exec ruby -I /home/jcmuller/Development/Greenhouse/dajoku_cli/lib /home/jcmuller/Development/Greenhouse/dajoku_cli/bin/dajoku'

# Postgresl
alias pg_base_9.6='bundle exec docker run -it --network=host --rm -e PGHOST -e PGUSER -e PGPASSWORD -v /tmp:/tmp:ro postgres:9.6-alpine'
alias createdb='pg_base_9.6 createdb'
alias pg_restore='pg_base_9.6 pg_restore'
alias dropdb='pg_base_9.6 dropdb'
alias psql='pg_base_9.6 psql'
alias pg_dump='pg_base_9.6 pg_dump'
alias pgsh='pg_base_9.6 sh'

alias grep='\grep --color=auto'
alias zgrep='\zgrep --color=auto'

alias docker_tree='docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz images --tree'
alias fly="docker run --net=host -it --rm -v /etc/ssl/certs:/etc/ssl/certs:ro -v $HOME/.config/fly:/home -v $(pwd):/workspace -e HOME=/home registry.int.greenhouse.io/concourse:fly "
alias aws-vault-pass='aws-vault --backend=pass --pass-cmd=pass --pass-prefix=aws-vault'
alias aws-vault-secret-service='aws-vault --backend=secret-service'
alias docker-dajoku='docker run -v $PWD:/app -v $HOME/.ssh/id_rsa:/root/.ssh/id_rsa -v /home/jcmuller/.config/docker-dajoku:/root/.config/dajoku --network=host -it --rm dajoku_cli'
alias hass-cli='summon -p gopass --yaml "HASS_TOKEN: !var hass/cli-token" docker run -it --network=host --rm -e HASS_SERVER=http://hassio.local:8123 -e HASS_TOKEN jcmuller/hass-cli-docker:latest'

[[ -z `alias grb` ]] || unalias grb

dajoku_login() {
  local dajokus user space region

  dajokus=(dev.use1 prod.use1 prod.usw2)
  user=juan@greenhouse.io

  for dj in $dajokus; do
    read -r space region <<<$(echo "$dj" | sed 's/\./ /')

    /home/jcmuller/bin/dajoku auth login -s "$space" -r "$region" "$user"
  done
}
