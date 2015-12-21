require_relative 'lib/rest_in_peace'

task :build do
	system 'gem build rest_in_peace.gemspec'
end

task :release => :build do
	system "gem push rest_in_peace-#{RIP::VERSION}.gem"
end
