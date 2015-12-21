require_relative 'lib/rest_in_peace'
Gem::Specification.new do |s|
	s.name        = 'rest_in_peace'
	s.version     = RIP::VERSION
	s.date        = Date.today
	s.summary     = 'Rest in Peace'
	s.description = 'A really simple interface to Net::HTTP using Rack triplets'
	s.authors     = ['Bryan T. Meyers']
	s.email       = 'bmeyers@datadrake.com'
	s.files       =  %w(lib/rest_in_peace.rb LICENSE README.md)
	s.homepage    = 'http://rubygems.org/gems/rest_in_peace'
	s.license     = 'MIT'
	s.add_runtime_dependency 'net/http'
end
