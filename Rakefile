require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rake/extensiontask"

RSpec::Core::RakeTask.new(:spec)

task :build => :compile

Rake::ExtensionTask.new("balanced_ternary_integer") do |ext|
  ext.lib_dir = "lib/balanced_ternary_integer" # .co - file
end
