require "active_record"  unless defined?(ActiveRecord)
require "active_support" unless defined?(ActiveSupport)

module BasicScopes
	extend ActiveSupport::Concern

	included do
		class << self
			def latest
				self.order(created_at: :desc)
			end

			def latest_reverse
				self.order(created_at: :asc)
			end
		end

	end

end

# include the extension
ActiveRecord::Base.send :include, BasicScopes