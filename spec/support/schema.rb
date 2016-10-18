ActiveRecord::Schema.define do
	self.verbose = false

	create_table :article, :force => true do |t|
		t.string :title
		t.string :description
		t.string :user_name
		t.timestamps
	end
end