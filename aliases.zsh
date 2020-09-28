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

alias grep='\grep --color=auto'
alias zgrep='\zgrep --color=auto'

alias docker_tree='docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz images --tree'
alias fly="docker run --net=host -it --rm -v /etc/ssl/certs:/etc/ssl/certs:ro -v $HOME/.config/fly:/home -v $(pwd):/workspace -e HOME=/home registry.int.greenhouse.io/concourse:fly "
alias hass-cli='summon -f ~/.config/hass-cli/secrets.yml docker run -it --name hass-cli --network=host --rm --env-file @SUMMONENVFILE jcmuller/hass-cli-docker:latest'

[[ -z `alias grb` ]] || unalias grb

alias timeit='time $(fc -ln -1)'
alias please='sudo $(fc -ln -1)'

alias tfi='terraform init -backend-config state.conf -upgrade'
alias tfp='terraform plan'
