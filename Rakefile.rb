require 'rake'
require 'rspec/core'
require 'rspec/core/rake_task'

task default: [:spec]

RSpec::Core::RakeTask.new(:spec) do |task|
    task.pattern = FileList['spec/*_spec.rb']
end

