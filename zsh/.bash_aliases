# -*- mode: shell-script -*-

alias spsql='sudo -u postgres psql'
alias pipall='pip install wheel && pip install -r requirements.txt'

alias datapop='cp ~/computer/data/population-estimates_csv.csv .'
alias dataipl='cp ~/computer/data/deliveries.csv ~/computer/data/matches.csv .'

alias serve='python -m http.server'

alias jekyll_run='bundle exec jekyll serve --livereload --drafts'

## Onsitego
alias onsitedb='mysql --host=127.0.0.1 --user=test --database=onsitego --password=test'
alias gobackend='sudo docker-compose -f docker-compose.development.yml exec backend bash'

alias current='source ~/bin/current-project.sh'
