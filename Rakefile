task :default => :test

$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :rspec


desc "Run ./bin/rat.rb "
task :ejecutar do
  sh "ruby -Ilib bin/rat.rb"
end

desc "Run ./test/tc_rat.rb "
task :test do
  sh "ruby -Ilib test/tc_rat.rb"

end

desc "Run a specific test, provide a test name or a /regexp/"
task :t, :test_name do |t,args|
 test_name = args[:test_name] || 'test_play'
sh "ruby -w -Ilib test/tc_rat.rb --name #{test_name}"
end

desc "Run Rspec"
task :rspec do
sh "rspec -Ilib test/rspec_rat.rb"
end
