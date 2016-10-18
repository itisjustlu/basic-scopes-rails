require 'active_record'

load File.dirname(__FILE__) + '/schema.rb'

class Article < ActiveRecord::Base
end