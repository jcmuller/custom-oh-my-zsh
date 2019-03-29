DAJOKU_USER=juan@greenhouse.io; export DAJOKU_USER

alias dajoku_dev='BUNDLE_GEMFILE=/home/jcmuller/Development/Greenhouse/dajoku_cli/Gemfile bundle exec ruby -I /home/jcmuller/Development/Greenhouse/dajoku_cli/lib /home/jcmuller/Development/Greenhouse/dajoku_cli/bin/dajoku'
alias docker-dajoku='docker run -v $PWD:/app -v $HOME/.ssh/id_rsa:/root/.ssh/id_rsa -v /home/jcmuller/.config/docker-dajoku:/root/.config/dajoku --network=host -it --rm dajoku_cli'

dajoku_login() {
  local dajokus user space region

  dajokus=(dev.use1 prod.use1 prod.usw2)
  user=juan@greenhouse.io

  for dj in $dajokus; do
    read -r space region <<<$(echo "$dj" | sed 's/\./ /')

    /home/jcmuller/bin/dajoku auth login -s "$space" -r "$region" "$user"
  done
}
