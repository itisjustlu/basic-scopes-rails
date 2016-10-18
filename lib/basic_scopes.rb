require 'active_support/concern'
require 'active_record'

module BasicScopes
	extend ActiveSupport::Concern

	included do
		scope :latest, -> { order(created_at: :desc) }
		scope :latest_reverse, -> { order(created_at: :asc) }
	end
end

# include the extension
ActiveRecord::Base.send(:include, BasicScopes)