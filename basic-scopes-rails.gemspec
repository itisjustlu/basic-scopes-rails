Gem::Specification.new do |gem|
	gem.name        = 'basic-scopes-rails'
	gem.version     = '0.1.6'
	gem.date        = '2016-10-27'
	gem.summary     = 'Basic scopes, Rails 5!'
	gem.description = 'Basic scopes to your ActiveRecord'
	gem.authors     = ['Lucas Juarez']
	gem.email       = 'lucasjavierjuarez@hotmail.com'
	gem.files       = ['lib/basic_scopes.rb']
	gem.homepage    = ''
	gem.license     = 'MIT'
	gem.add_development_dependency 'activerecord', '~> 5.0', '>= 5.0.0'
	gem.add_development_dependency 'sqlite3', '~> 0'
	gem.add_development_dependency 'rspec', '~> 3.5'
	gem.add_development_dependency 'database_cleaner'
	gem.add_development_dependency 'rake'
end