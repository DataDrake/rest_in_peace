require_relative 'lib/rest-less'

task :build do
	system 'gem build rest-less.gemspec'
end

task :release => :build do
	system "gem push rest-less-#{RL::VERSION}.gem"
end
