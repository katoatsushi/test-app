class Clip < ApplicationRecord
	# validates :user_id, :uniqueness => {:scope => :event_id}
	validates :customer_id, :uniqueness => {:scope => :event_id}
    # belongs_to :user
    belongs_to :customer
    belongs_to :event
end
