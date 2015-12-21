require_relative 'lib/rest-less'
Gem::Specification.new do |s|
	s.name        = 'rest-less'
	s.version     = RL::VERSION
	s.date        = Date.today
	s.summary     = 'rest-less'
	s.description = 'A really simple interface to Net::HTTP using Rack triplets'
	s.authors     = ['Bryan T. Meyers']
	s.email       = 'bmeyers@datadrake.com'
	s.files       =  %w(lib/rest-less.rb LICENSE README.md)
	s.homepage    = 'http://rubygems.org/gems/rest-less'
	s.license     = 'MIT'
	s.add_runtime_dependency 'net/http'
end
