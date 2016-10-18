
require 'active_record'
require 'database_cleaner'

ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: ':memory:'

require 'support/model'

RSpec.configure do |config|
	config.before(:suite) do
		DatabaseCleaner.clean_with(:truncation)
	end

	config.before(:each) do
		DatabaseCleaner.strategy = :transaction
	end

	config.before(:each, :js => true) do
		DatabaseCleaner.strategy = :truncation
	end

	config.before(:each) do
		DatabaseCleaner.start
	end

	config.after(:each) do
		DatabaseCleaner.clean
	end
end