node {
  git checkout master
}
export RAILS_ENV=development
bundle install --deployment --path vendor/bundle
bundle exec rake db:migrate
bundle exec rspec spec --order random --fail-fast
