alias devlog="heroku logs --tail -n10000 --app dev-greenhouse"
alias uatlog="heroku logs --tail -n10000 --app uat-greenhouse"

alias devc="heroku run rails console --app dev-greenhouse"
alias uatc="heroku run rails console --app uat-greenhouse"

alias rspec="bundle exec rspec"
alias rake="bundle exec rake"
alias testdb="RAILS_ENV=test bundle exec rake --trace db:test:load db:seed"

alias ghdropbox="HOME=~/.gh-home dropbox"
