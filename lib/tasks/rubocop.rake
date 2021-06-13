begin

require 'rubocop/rake_task'

desc 'Run RuboCop on the app to rubocop.html'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.options = %w(
    --lint
    --format progress
    --format html --out log/rubocop.html
  )
end

namespace :rubocop do
  task :dirty do
    exec "bundle exec script/dirty_cop.rb --against master --lint"
  end
end

end
