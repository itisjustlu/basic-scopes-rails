require 'active_support/concern'
require 'active_record'

module BasicScopes
	extend ActiveSupport::Concern

	included do
		scope :latest, -> { order(created_at: :desc) }
		scope :latest_reverse, -> { order(created_at: :asc) }

		scope :excluded_ids, -> (ids) { where.not(id: ids) }
		scope :excluded_id, -> (id) { excluded_ids([id]) }

		scope :by_attribute, -> (attr) {order(attr => :asc)}
		scope :by_attribute_reverse, -> (attr) {order(attr => :desc)}
	end
end

# include the extension
ActiveRecord::Base.send(:include, BasicScopes)