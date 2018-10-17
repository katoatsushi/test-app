class Clip < ApplicationRecord
	# validates :user_id, :uniqueness => {:scope => :event_id}
	validates :customer_id, :uniqueness => {:scope => :event_id}
    # belongs_to :user
    belongs_to :customer
    belongs_to :event


    #特定のユーザーが特定のfoodをすでにいいねしているかを判別するメソッド
	def liked? (cliop_customer_id, clip_event_id)
	 clips.where(customer_id: clips_customer_id, event_id: clips_event_id).exists?
	end

end
